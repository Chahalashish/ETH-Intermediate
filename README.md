# ETH-Intermediate
# CollegeEligibilityChecker Smart Contract

## Overview

The CollegeEligibilityChecker is a Solidity smart contract designed to check and manage eligibility for different types of colleges based on a student's score. It allows an owner to update scores and check eligibility for various college types, including IITs, NITs, and private colleges.

## Features

- Score management: Keep track of a student's current score.
- Eligibility checks: Verify eligibility for different types of colleges.
- Owner-only access: Restrict critical functions to the contract owner.
- Event emission: Notify listeners when a score is updated.
- Minimum score verification: Ensure the score meets a minimum threshold.

## Contract Details

- License: MIT
- Solidity Version: ^0.8.0

## Functions

1. `checkIITEligibility(uint256 newScore)`: Check eligibility for IITs (score > 90).
2. `checkNITEligibility(uint256 newScore)`: Check eligibility for NITs (score > 80).
3. `checkPrivateCollegeEligibility(uint256 newScore)`: Check eligibility for private colleges (score > 60).
4. `verifyMinimumPassingScore()`: Verify that the current score is at least 33.
5. `checkGeneralEligibility(uint256 newScore)`: Check general eligibility for any college (score > 45).

## Events

- `ScoreUpdated(uint256 newScore)`: Emitted when a score is updated.

## Modifiers

- `onlyOwner`: Restricts function access to the contract owner.

## Usage

1. Deploy the contract. The deploying address becomes the owner.
2. Use the various eligibility check functions to update scores and verify eligibility.
3. The `verifyMinimumPassingScore` function can be called at any time to ensure the score meets the minimum threshold.

## Security

- Only the owner can update scores and check eligibility.
- The contract uses `require`, `assert`, and `revert` statements for different types of checks and error handling.

## Development and Testing

To work with this contract:

1. Ensure you have a Solidity development environment set up.
2. Compile the contract using Solidity compiler version 0.8.0 or higher.
3. Deploy the contract to your chosen network (local, testnet, or mainnet).
4. Interact with the contract using a web3 library or through a blockchain explorer.

## License

This project is licensed under the MIT License.
