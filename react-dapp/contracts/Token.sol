//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract Token {
    string public name = "Deval Minocha Token";
    string public symbol = "DMT";
    uint public totalSupply = 100000;
    mapping(address => uint) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not enough Tokens");
        balances[msg.sender] -= amount ;
        balances[to] += amount ;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }
}