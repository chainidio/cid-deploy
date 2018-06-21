#!/usr/bin/env bash

BRIDGECHAIN_PATH="/home/$USER/cid-chainid"
EXPLORER_PATH="/home/$USER/cid-explorer"
CHAIN_NAME="chainid"
DATABASE_NAME="cid_$CHAIN_NAME"
NODE_IP="0.0.0.0"
NODE_PORT="4100"
EXPLORER_IP="127.0.0.1"
EXPLORER_PORT="4200"
TOKEN="CID"
SYMBOL="C"
PREFIX="C"
INSTALL_DEPS="N"
SKIP_DEPS="N"
INTERACTIVE="Y"
AUTO_FORGER="Y"

## Constants
## Fees
FEE_SEND=00000000
FEE_VOTE=000000000
FEE_SECOND_PASSPHRASE=000000000
FEE_DELEGATE=0000000000
FEE_MULTISIG=000000000

## Forging Delegates
FORGERS=51

## Vote per Wallet
MAX_VOTES=1

## Block time (seconds)
BLOCK_TIME=2

## Max Transactions per Block
TXS_PER_BLOCK=50

## Total Premined Tokens
TOTAL_PREMINE=21000000000000000000

## Max Tokens per Account
MAX_TOKENS_PER_ACCOUNT=1250000000000000000

## Whether to update epoch time for chainid
UPDATE_EPOCH="N"

## Rewards
## Start Block Height
REWARD_HEIGHT_START=7600

## ARK reward per Block
REWARD_PER_BLOCK=500000000

## Flag to indicate if args has been processed
ARGS_PROCESSED="N"

## Flag to indicate if JSON config has been processed
CONFIG_PROCESSED="N"
