// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TigerCoin is ERC20 {
    // 99,999,999 TIGER (18 decimals)
    uint256 public constant MAX_SUPPLY = 99_999_999 * 1e18;

    constructor(address safe) ERC20("TigerCoin", "TIGER") {
        require(safe != address(0), "TigerCoin: safe is zero");
        _mint(safe, MAX_SUPPLY);
    }
}
