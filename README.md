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



