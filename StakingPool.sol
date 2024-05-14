// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract StakingPool {
    struct Staker {
        uint256 stakedAmount;
        uint256 lastClaimedTimestamp;
    }

    address public stakingToken;
    uint256 public poolDistributionAmount;
    uint256 public poolDuration;
    uint256 public lockinDuration;

    uint256 public totalStakedAmount;
    uint256 public totalRewardsDistributed;
    uint256 public totalPoolAmountLeft;
    uint256 public currentHourlyRewardEmission;
    uint256 public poolStartTime;

    mapping(address => Staker) public stakers;
    address[] public activeStakers;

    event Staked(address indexed staker, uint256 amount);
    event Unstaked(address indexed staker, uint256 amount);
    event RewardClaimed(address indexed staker, uint256 amount);

    constructor(
        address _stakingToken,
        uint256 _poolDistributionAmount,
        uint256 _poolDuration,
        uint256 _lockinDuration
    ) {
        stakingToken = _stakingToken;
        poolDistributionAmount = _poolDistributionAmount;
        poolDuration = _poolDuration;
        lockinDuration = _lockinDuration;
    }

    function stake(uint256 _amount) external {
        require(_amount > 0, "Amount must be greater than 0");
        require(
            stakers[msg.sender].stakedAmount == 0,
            "Already staked in the pool"
        );
        require(
            IERC20(stakingToken).transferFrom(
                msg.sender,
                address(this),
                _amount
            ),
            "Transfer failed"
        );

        stakers[msg.sender] = Staker({
            stakedAmount: _amount,
            lastClaimedTimestamp: block.timestamp
        });
        totalStakedAmount += _amount;
        activeStakers.push(msg.sender);

        emit Staked(msg.sender, _amount);
    }


