// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract myContract {
    //fixed array
    uint8[3] public fixedArray;
    //dymamic array
    uint8[] public dynamicArray;
    //byte array
    bytes1 public b1;
    bytes2 public b2;

    string private name;

    //immutable value
    int256 immutable area = 100;

    //constant value

    int256 public constant size = 10;

    int8 private constant age = 30;

    constructor() {
        fixedArray = [1, 2, 3];
        dynamicArray = [7, 8, 9];
        b1 = "a";
        b2 = "a";
    }

    function getElementInArrayByIndex(uint8 index)
        public
        view
        returns (uint256)
    {
        if (index > dynamicArray.length) {
            return 0;
        }
        return dynamicArray[index];
    }

    function appendToArray(uint8 item) public {
        dynamicArray.push(item);
    }

    function createNewMemoryArray() public pure {
        uint256[] memory newMemoryArray = new uint256[](2);
        newMemoryArray[0] = 1;
        newMemoryArray[1] = 2;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
