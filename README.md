# Staking Pool Smart Contract

## Overview

This Solidity smart contract implements a staking pool with dynamic parameters. Users can stake tokens into the pool, earn rewards based on their staked amount and the pool's distribution rate, and withdraw their staked tokens and claimed rewards.

## Functionalities

- Create a Staking Pool with dynamic parameters
    - Staking Token: The token to distribute with this Pool
    - Pool Distribution Amount: The total amount of tokens to be distributed among a span of time
    - Pool Duration: Number of days the pool would be active
    - Lockin Duration: Minimum number of days a staker has to stay in that Pool before they can withdraw their tokens
- Add users to the Staking Pool
- Unstake Tokens: A staker can unstake their staked tokens once the lockin time has passed
- Claim Rewards: Users can claim their rewards
- Expose functions for:
    - Current Hourly Reward Emission of the pool
    - Total Pool Amount left for distribution
    - Count of Active Stakers
    - List of all the current active stakers
    - List of all stakers (active and unstaked)
    - Amount of Tokens Staked in the Pool by all the stakers
    - Fetch a staker’s staking details by wallet address (amount staked, accumulated reward, and wallet address, timestamp on which it was staked)

## Example Usage

1. Deploy the Staking Pool smart contract, providing the necessary parameters such as staking token address, pool distribution amount, pool duration, and lockin duration.
2. Users can stake tokens into the pool using the `stake` function.
3. After the lockin duration has passed, users can unstake their tokens using the `unstake` function.
4. Users can claim their rewards using the `claimReward` function.



## Testing in Remix

1. Go to [Remix](https://remix.ethereum.org/).

2. Create a new file and paste your Solidity smart contract code into it.

3. Compile your smart contract by selecting the appropriate Solidity version and clicking on the "Compile" tab.

4. Once compiled successfully, navigate to the "Deploy & Run Transactions" tab.

5. Select the desired environment (e.g., JavaScript VM, Injected Web3, etc.).

6. Deploy your smart contract by clicking on the "Deploy" button.

7. Test your smart contract's functionalities using the provided UI or by interacting with the contract's functions directly.

## Deployment in Remix

1. Follow steps 1-4 from the Testing section above.

2. Select the desired environment (e.g., Injected Web3 for deploying to a live Ethereum network).

3. Make sure you have sufficient funds in your wallet to cover the deployment gas fees.

4. Deploy your smart contract by clicking on the "Deploy" button.

5. Confirm the transaction in your wallet.

6. Once the deployment transaction is confirmed, your smart contract will be deployed to the selected Ethereum network.

