# TigerCoin (TIGER) — Verification Parameters (BaseScan)

This file records the exact parameters used to compile and verify the deployed TigerCoin contract.

## Network
- Chain: Base Mainnet
- Chain ID: 8453

## Official Contract Address
- TIGER Contract: 0xf6af794ef83826beeeC62f50D691532945c2Ae23

## Token Details
- Name: TigerCoin
- Symbol: TIGER
- Decimals: 18
- Max / Total Supply: 99,999,999 TIGER (minted once)

## Compiler / Build Settings
- Language: Solidity
- Compiler version: 0.8.20
- Optimization: Enabled
- Optimizer runs: 200
- License: MIT

## Constructor
- Parameter: `safe` (treasury / Safe address receiving the initial mint)
- Note: `safe` must be a non-zero address.

## Admin / Control Notes (Important)
- No owner/admin role.
- No mint function after deployment (no re-mint / no inflation).
- No pause, blacklist, whitelist, fee, reflection, or rebasing logic.
- Not upgradeable (no proxy / upgrade mechanism implemented).
