// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Aviary {
    uint256 public myBirdcount;

    function setmyBirdcount(uint256 _count) external {
        // Using require() to validate input
        require(_count != 0, "The bird count cannot be zero");
        
        // Using assert() to validate internal state
        assert(myBirdcount + _count > myBirdcount);

        // Using revert() to revert the transaction
        if (_count > 500) {
            revert("The number of birds count is too large");
        }

        myBirdcount = _count;
    }
}
