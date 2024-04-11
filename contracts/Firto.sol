// SPDX-License-Identifier: MIT
pragma solidity ^0.8 ;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";


contract Firto is ERC20Capped, ERC20Burnable  {
    address payable public owner;
    constructor(uint cap) ERC20("FirtoToken","Firto") ERC20Capped(cap * (10 ** decimals())) {
        owner = payable(msg.sender) ;
        _mint(owner,70000000 * (10 ** decimals()));
    }
}