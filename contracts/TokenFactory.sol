// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MyToken.sol";

contract TokenFactory {
    event TokenCreated(address tokenAddress, string name, string symbol);
    
    function createToken(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) public returns (address) {
        MyToken newToken = new MyToken(name, symbol, initialSupply);
        emit TokenCreated(address(newToken), name, symbol);
        return address(newToken);
    }
}
