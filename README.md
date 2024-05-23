Module 1 Function and Errors Require Assert and Revert
The Aviary contract tracks the count of birds using a single state variable myBirdcount. The contract includes a function setmyBirdcount which allows external users to set the bird count, with specific conditions enforced by the require(), assert(), and revert() statements.

Usage


1. Clone this repository to your local machine: 

2. Navigate to the project directory: cd solidity-assertions

3. Open the RequireAssertRevert.sol file in your preferred Solidity development environment.

3. Compile the smart contract.

4. Deploy the smart contract to your desired Ethereum network (testnet or mainnet).

5. Interact with the deployed contract using the provided functions, such as setNumber().

Code Explanation

1. Require
   This statement ensures that the input count is not zero. If _count is zero, the transaction is     reverted, and an error message "The bird count cannot be zero" is returned.
   
2.Assert
    This statement ensures that adding _count to the current myBirdcount does not cause an overflow, which would be a logical error in this context. If this condition fails, the transaction is reverted, and all gas is consumed.

3. Revert
   This statement checks if the input count exceeds 500. If it does, the transaction is explicitly reverted, and an error message "The number of birds count is too large" is returned.
