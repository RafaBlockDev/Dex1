// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenERC20 is ERC20 {
    constructor() ERC20("Token name", "TNM") {}
}

contract TokenERC20_1 is ERC20 {
    constructor() ERC20("Token Name", "TNM2") {
        _mint(msg.sender, 100000);
    }
}

contract TokenERC20_2 is ERC20 {
    constructor() ERC20("Token Name", "TNM2") {
        _mint(msg.sender, 100000);
    }
}

contract TokenERC20_3 is ERC20 {
    address public admin;
        
    constructor() ERC20("Token Name", "TNM3") {
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, "only admin");
        _mint(to, amount);
    }
    
}

contract TokenERC20_4 is ERC20 {     
    constructor() ERC20("Token Name", "TNM3") {
    }

    function faucet(address to, uint amount) external {
        _mint(to, amount);
    
    }
    
}