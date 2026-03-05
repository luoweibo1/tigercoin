# TigerCoin (TIGER)

Official TigerCoin (TIGER) resources: contract, verification parameters, docs, and brand assets.

> **Official website:** https://tiger-coin.com  
> **Important:** Only trust information linked from the official website.

---

## Token Overview

- **Network:** Base Mainnet  
- **Chain ID:** 8453  
- **Token Standard:** ERC-20  
- **Token Name / Symbol:** TigerCoin / TIGER  
- **Contract Address (OFFICIAL):** `0xf6af794ef83826beeeC62f50D691532945c2Ae23`  
- **Decimals:** 18  
- **Total Supply:** 99,999,999 TIGER (**minted once at deployment**)  
- **Initial Recipient:** Project Safe (multisig)

> ⚠️ Any other contract address claiming to be TigerCoin (TIGER) is **NOT official**.

---

## Contract Security / Admin Controls

TigerCoin is deployed as a standard ERC-20 token on Base Mainnet.

### No taxes / fees / rebasing / reflections
The contract **does not implement** any transfer tax, fee-on-transfer, reflection, rebasing, or automatic redistribution mechanisms.

### Non-upgradeable / No admin functions
The deployed contract is **non-upgradeable** and **does not include admin/owner privileged functions**.  
There is **no owner role** and **no admin controls** such as additional minting, pausing, blacklisting, whitelisting, or transfer restrictions.

### Supply policy (minted once)
The total supply is **minted once at deployment** to the designated Safe address.  
There is **no further mint function** exposed for future issuance.

---

## Verification Notes (BaseScan)

To verify the contract on BaseScan, use:
- **Compiler:** Solidity `^0.8.20`
- **Optimization:** Enabled (Runs = `200`)  
- **License:** MIT
- **Constructor argument:** `safe` (the address receiving the initial mint)

Source code (core contract):
```solidity
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
