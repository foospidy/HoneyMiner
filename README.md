# HoneyMiner
Deploy a honeypot and a crypto currency miner together, so sweet.

If you have extra cloud hosts (or non-cloud hosts) that you don't know what to do with, HoneyMiner
might be for you.

Have you always wanted to run a honeypot? Have you always wanted to do some crypto currency mining? HoneyMiner might be for you.

Are you bored with nothing to do? HoneyMiner might be for you.

## What is HoneyMiner?

HoneyMiner is a bash script that automates the installation of a crypto currency mining tool (minergate-cli) and a honeypot (honeydb-agent) on remote servers.

## What do I need to get started?

- You'll need at least one Debian or Ubuntu Linux server that you do not care about.
  - This script needs to run as root and it sets up everything to run as root.
  - This script installs Debian packages, you'll need to update the script if you want to install rpm packages.
- [Minergate](https://minergate.com/) account
- [HoneyDB](https://riskdiscovery.com/honeydb/#login) account

In the conf directory, rename `agent.conf.example` to `agent.conf`. This is the honeydb-agent configuration file.

## What crypto currencies are supported?

Currently, with the minergate-cli tool it supports the [CryptoNote](https://minergate.com/calculator/cryptonote) currencies:

- DigitalNote ([XDN](https://coinmarketcap.com/currencies/digitalnote/))
- Monero ([XMR](https://coinmarketcap.com/currencies/monero/))
- FantomCoin ([FCN](https://coinmarketcap.com/currencies/fantomcoin/))**
- Bytecoin ([BCN](https://coinmarketcap.com/currencies/bytecoin-bcn/))
- DashCoin ([DSH](https://coinmarketcap.com/currencies/dashcoin/))**
- Infinium-8 (INF8)*
- MonetaVerde ([MCN](https://coinmarketcap.com/currencies/monetaverde/))*
- QuazarCoin ([QCN](https://coinmarketcap.com/currencies/quazarcoin/))*

*inactive coins

**possibly inactive coins

Support for [Equihash](https://minergate.com/calculator/equihash) currencies tbd. PRs welcome!


