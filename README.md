![CID-DESKTOP](https://raw.githubusercontent.com/chainidio/cid-deploy/master/whitepaper.png)

## Prerequisites

- Because the CID Node is recommended to be run on Ubuntu 16 (see the [node guide](https://chainid.io)), we recommend that the deploy is only run on Ubuntu 16 also.
- User running the deploy commands must be a sudoer

## Installation

```bash
git clone https://github.com/chainidio/cid-deploy.git && cd cid-deploy
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.profile
nvm install 8.9.1
sudo apt-get update && sudo apt-get install -y jq
```

## Detailed Guide

Follow this [full guide](https://develop.chainid.io) to get the best out of your Bridgechain.

## Quick setup with Vagrant
Deploy a chainid and explorer within its own Vagrant setup. This requires vagrant version 2 and up.

1. Install Vagrant on your local computer
2. Clone the cid-deploy from our repository
```bash
$> git clone https://github.com/chainidio/cid-deploy.git && cd cid-deploy
```
3. Run the vagrant command
```bash
$> vagrant up
```
Vagrant will then reboot. Once finished, wait a further minute or so and you can access the Node and Explorer using the below URLs:

Node API (port forwarded): `http://127.0.0.1:14100/api/`
Explorer (port forwarded): `http://127.0.0.1:14200/`


## Manual installation

### Node installation

*Note: Change <MACHINE_IP> to your Machine's IP*

```bash
./chainid.sh install-node --name MyTest --database cid_chainid --token MYTEST --symbol MT --node-ip <NODE_IP>
./chainid.sh start-node --name MyTest
```

#### Optional Parameters

    --path - Path to install Bridgechain [/home/$USER/cid-chainid]
    --name - Name of Bridgechain [chainid]
    --database - Database Name [cid_chainid]
    --node-ip - IP for node [0.0.0.0]
    --node-port - Port for node [4100]
    --explorer-ip - IP for explorer [127.0.0.1]
    --explorer-port - Port for explorer [4200]
    --token - Token Name [CID]
    --symbol - Symbol for Token [M]
    --prefix - Address Prefix [M]
    --forgers - How many forgers for the network [51]
    --max-votes - Max Votes per Wallet [1]
    --blocktime - Time per block (seconds) [8]
    --transactions-per-block - Max Transaction count per Block [50]
    --reward-height-start - Block Height when Forgers receive Rewards [75600]
    --reward-per-block - How many Rewarded Tokens per Forged Block [200000000 (2)]
    --total-premine - How many tokens initially added to genesis account [210000000000000000 (210 million)]
    --max-tokens-per-account - Max amount of tokens per account [12500000000000000 (1.250 million)]
    --config - Path to JSON config file for install options (see below section for more information)
    --autoinstall-deps - Automatically install dependencies without prompt
    --skip-deps - Skips check for installing dependencies

*Note: Below Parameters do not work with standard wallets (with hardcoded values)*

    --fee-send - Fee for sending Transaction [10000000 (0.1)]
    --fee-vote - Fee for Vote Transaction [100000000 (1)]
    --fee-second-passphrase - Fee for Second Passphrase Transaction [500000000 (5)]
    --fee-delegate - Fee for Register Delegate Transaction [2500000000 (25)]
    --fee-multisig - Fee for Multisignature Transaction [500000000 (5)]
    --update-epoch - Set Epoch based on time the chain was created

### Explorer installation

*Note: Change <MACHINE_IP> to your Machine's IP*

```bash
./chainid.sh install-explorer --name MyTest --token MYTEST --explorer-ip <EXPLORER_IP> --node-ip <NODE_IP>
./chainid.sh start-explorer
```

#### Optional Parameters

    --path - Path to install Explorer [/home/$USER/cid-explorer]
    --name - Name of Bridgechain [chainid]
    --node-ip - IP for node [0.0.0.0]
    --node-port - Port for node [4100]
    --explorer-ip - IP for explorer [127.0.0.1]
    --explorer-port - Port for explorer [4200]
    --token - Token Name [CID]
    --forgers - How many forgers for the network [51]
    --config - Path to JSON config file for install options (see below section for more information)
    --autoinstall-deps - Automatically install dependencies without prompt
    --skip-deps - Skips check for installing dependencies

## JSON Config

As mentioned in the parameters list, it's possible to pass in a JSON config file to load all properties, although they're not all required. For a full sample file, take a look [here](config.sample.json). For a small sample, see below:

```json
{
    "nodeIp": "localhost",
    "nodePort": 4100,
    "explorerIp": "1.2.3.4",
    "explorerPort": 4200
}
```

To use a config file during an install, simply use the `--config` argument. For example: 

```bash
./chainid.sh install-node --config /path/to/config.json
```

## License

CID Deploy is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.
