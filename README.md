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

Now that you have accounts, update the configuration files in HoneyMiner's `conf` directory.

- Rename `agent.conf.example` to `agent.conf`. This is the honeydb-agent (honeypot) configuration file. It will be deployed to each server you configer in `nodes.conf`.
- Rename `nodes.conf.example` to `nodes.conf`. This configration contains your server ip addresses and root password (yes, root password in clear text, remember, these are servers you don't care about). It will also contain your Minergate user id and config for mining (coin and number of cores to utlize).

Example `nodes.conf`:
```
# ipaddress root_password minergate_id coin cores
1.2.3.4 ABC123 email@address.com bcn 2
5.6.7.8 123ABC email@address.com bcn 4
4.3.2.1 abc123 email@address.com bcn 2
8.7.6.5 123abce email@address.com bcn 2
```

Now that you have everything configured, here are some commands.

Launch crypto mining and honey potting on all nodes: `./honeyminer start`

If you want to change the coin you are mining:

1. Stop mining on all nodes: `./honeyminer stop-mining`
2. Edit `nodes.conf` to configre the new coin to mine.
3. Start mining on all nodes: `./honeyminer start-mining`

You can also override the configured coin with the `coin` option on the command line, example:

1. Stop mining on all nodes: `./honeyminer stop-mining`
2. Start mining on all nodes with specified coin: `./honeyminer start-mining coin xmr`

If your cloud provider is crappy like mine, you may need to check the health of nodes.

- Ping nodes to make sure they are still up: `./honeyminer nodecheck`
- Check nodes that file system is still writtable: `./honeyminer fscheck`

You can also check the status of hash rates on all nodes with: `./honeyminer status-mining`

Example output:
```
HoneyMiner: 1.1.1.1 Average hash rate: 0 weak miner!
HoneyMiner: 2.2.2.2 Average hash rate: 14.4604
HoneyMiner: 3.3.3.3 Average hash rate: 19.3112
HoneyMiner: 4.4.4.4 Average hash rate: 7.27907
HoneyMiner: 5.5.5.5 Average hash rate: 33.8052
HoneyMiner: 6.6.6.6 Average hash rate: 32.5291
HoneyMiner: 7.7.7.7 Average hash rate: 16.6115
```
  
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


