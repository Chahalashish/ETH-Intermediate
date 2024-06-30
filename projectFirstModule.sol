// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CollegeEligibilityChecker 
{
    uint256 public score = 30;
    address public owner;

    // Event to notify when score is updated
    event ScoreUpdated(uint256 newScore);

    // Modifier to restrict access to the owner
    modifier onlyOwner() 
    {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor() 
    {
        // Set the contract deployer as the owner
        owner = msg.sender;
    }

    // Function to check eligibility for IIT
    function checkIITEligibility(uint256 newScore) external onlyOwner 
    {
        require(newScore > 90, "Not eligible for IIT");

        score = newScore;
        emit ScoreUpdated(newScore);
    }

    // Function to check eligibility for NIT
    function checkNITEligibility(uint256 newScore) external onlyOwner 
    {
        require(newScore > 80, "Not eligible for NIT");

        score = newScore;
        emit ScoreUpdated(newScore);
    }

    // Function to check eligibility for private colleges
    function checkPrivateCollegeEligibility(uint256 newScore) external onlyOwner
    {
        require(newScore > 60, "Not eligible for private colleges");

        score = newScore;
        emit ScoreUpdated(newScore);
    }

    // Function that uses assert statement for checking minimum passing score
    function verifyMinimumPassingScore() external view 
    {
        assert(score >= 33); // This should always be true
    }

    // Function to demonstrate revert statement to check eligibility for any college
    function checkGeneralEligibility(uint256 newScore) external onlyOwner {
        if (newScore <= 45) {
            revert("Score too low for any college");
        }
        score = newScore;
        emit ScoreUpdated(newScore);
    }
}
