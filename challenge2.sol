// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;


//check the value of different units of ether
contract EtheriumUnitCalculaor {
    function ConvtToWei(uint _wei) public pure returns (uint) {
        return _wei;
    }

    function ConvtToEth(uint _eth) public pure returns (uint) {
        //1ether = 1e18 
        return _eth / 1 ether;
    }

    function ConvtToGwei(uint _gwei) public pure returns (uint) {
        return _gwei / 1 gwei;
    }
}
