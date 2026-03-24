# 💀 Charon Engine (The Onchain Dead Man's Switch)
**"Crypto makes you your own bank. Charon makes sure your wealth survives your physical end."**

> **Tech Stack:** OpenClaw (NLP Will Parsing) | OKX Onchain OS (Pulse Monitoring) | AA Vault Contracts

## 🪦 The Problem: The Cyber Graveyard
In Web2, if you pass away, your family can claim your bank assets with a death certificate. In Web3, without your private keys, your wealth becomes dark matter in the universe—lost forever on the blockchain. 
Current solutions rely on complex multi-sig setups or centralized social recovery, which are highly technical and prone to human error. **Retail users lack a natural-language-driven, trustless Cyber-Will.**

## ⚖️ The Solution: Enter Charon
Charon Engine is an automated onchain inheritance agent. It acts as a silent watcher, continuously monitoring your wallet's onchain heartbeat (activity). If you go silent beyond a predefined threshold (e.g., 365 days), Charon awakens, decrypts your natural-language final directive, liquidates your risky assets, and distributes the stablecoins to your loved ones.

### ⚙️ The Final Directive Pipeline
1. **Intent Encoding:** The user writes their will in plain English: *"If I am inactive for 180 days, liquidate all my altcoins to USDC. Send 70% to wife.eth and 30% to kid.eth."*
2. **Pulse Check (OKX OS):** Charon uses OKX Onchain OS API to check the `last_transaction_timestamp` of the target wallet daily.
3. **Flatline Trigger:** Once the timeout is breached, the Dead Man's Switch is activated.
4. **Execution & Distribution:** The Agent interacts with the user's Smart Account (AA Vault) to execute the swaps via OKX Aggregator and route the funds to the beneficiaries.

---

## 💻 Live Terminal Output (Execution Mode)
```yaml
[OKX Onchain OS] > CHARON ENGINE_ (Cyber Inheritance Protocol)
=============================================================
[TARGET ENTITY] 0x4B2...9cE1 (Vital Signs Monitor)
[PULSE CHECK]   Last Onchain Activity: 181 Days Ago
[THRESHOLD]     180 Days (Timeout Exceeded)
[STATUS]        🚨 FLATLINE DETECTED: INITIATING CYBER-WILL 🚨
=============================================================
> DECRYPTING FINAL DIRECTIVE (Parsed by Claw NLP) ...
  - Intent: "Liquidate altcoins, split 70/30 to wife.eth and kid.eth"

> EXECUTING INHERITANCE DISTRIBUTION (via AA Vault) ...
  [+] Transferring 24,570 USDC (70%) -> wife.eth
  [+] Transferring 10,530 USDC (30%) -> kid.eth

[SYSTEM] "What is dead may never die." Inheritance complete.
```
🛠️ Reproducibility & Architecture
This repository contains the backend agent logic. To run the simulation locally:
```bash
git clone https://github.com/502417lyj/Charon-Engine-The-Onchain-Dead-Man-s-Switch-/tree/main
cp config/.env.example config/.env
python main.py

<img width="750" height="713" alt="b72d16b24f9bbad544e130f5aa1897a7" src="https://github.com/user-attachments/assets/04f9f680-3bb3-4ce2-b55b-79c46b0bd509" />
