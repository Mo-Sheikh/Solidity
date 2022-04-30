//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract dynamicStringAndBytesArray {
    //for abritrary length byte data used bytes type
    bytes public b1 = "abc";
    //for arbitrary length string data represented in utf-8 use string type
    string public s1 = "abc";

    function addElement() public {
        b1.push("x");
    }

    //string arrays are not indexable
    function getElement(uint256 i) public view returns (bytes1) {
        if (b1.length > i) {
            return b1[i];
        }
        return 0;
    }

    //string arrays do not have the length property
    function getLength() public view returns (uint256) {
        return b1.length;
    }
}
