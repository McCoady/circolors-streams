// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.23;

contract ProtoPOAP {

    address[] private addresses;

    uint256 public contractDeployedTime;

    // hash of store slot + address is location bool is stored at
    mapping(address => bool) public isInArray;

    // block.??? = block.timestamp block.number block.blockhash
    constructor() {
        // time when contract deployed
        contractDeployedTime = block.timestamp;
    }

    // arguments/visibility/return
    // public / external  
    // internal / private
    function addAddressToArray() public {
        // if user is already in array revert
        require(!isInArray[msg.sender], "Is already in array");
        // time when function is called
        require(block.timestamp < contractDeployedTime + 1 hours, "Time limit passed");

        addresses.push(msg.sender);
        isInArray[msg.sender] = true;
    }
    // view doesnt change state
    function getAddressArray() public view returns(address[] memory) {
        return addresses;
    } 
}
