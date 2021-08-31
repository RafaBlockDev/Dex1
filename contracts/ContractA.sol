// SPDX-License-Identidfier: MIT

pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ContractB {
    function deposit(uint amount) external;
    function withdraw(uint amount) external;
}

contract ContractA {
    ERC20 public token;

    constructor(address _token) {
        token = IERC20(_token);
        contractB = ContractB(_contractB);
    }

    function deposit(uint amount) external {
        token.transferFrom(msg.sender, address(this), amount);
        token.approve(address(contractB), amount);
        contractB.deposit(amount);
    }

    function withdraw(uint amount) external {
        contractB.withdraw(amount);
        token.transfer(msg.sender, amount);
    }
}