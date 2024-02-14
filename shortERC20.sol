// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Permit.sol";

contract ColeToken is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("ColeToken", "CTK")
        Ownable(initialOwner)
        ERC20Permit("ColeToken")
    {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
