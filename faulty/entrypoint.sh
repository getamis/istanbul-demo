#!/bin/bash

geth \
    --datadir "/eth" \
	init "/eth/genesis.json"

geth \
    --identity "$IDENTITY" \
    --rpc \
    --rpcaddr "0.0.0.0" \
    --rpcport "8545" \
    --rpccorsdomain "*" \
    --datadir "/eth" \
    --port "$PORT" \
    --rpcapi "db,eth,net,web3" \
    --networkid "2017" \
    --nat "any" \
    --nodekeyhex "$NODEKEY" \
    --bootnodes "$BOOTNODES" \
    --mine \
    --minerthreads 1 \
    --debug \
    --metrics \
    --syncmode "full" \
    --istanbul.blockpausetime 1 \
    --ethstats "$IDENTITY:$ETHSTATS" \
    --istanbul.faultymode 1