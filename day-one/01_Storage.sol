// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.23;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

// TOAD NOTE:
// primitive data types (https://solidity-by-example.org/primitives/)
// function visibility (https://solidity-by-example.org/visibility/)
contract Storage {
    //256bits == 2**256 maximum
    uint256 private number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */

    // SETTER
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    // GETTER
    // View functions don't require gas to call
    function retrieve() public view returns (uint256){
        return number;
    }
}
