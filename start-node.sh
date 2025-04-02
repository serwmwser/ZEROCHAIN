#!/bin/bash

nohup /workspaces/ZEROCHAIN/polygon-edge/polygon-edge server \
  --data-dir /workspaces/ZEROCHAIN/polygon-edge/data \
  --chain /workspaces/ZEROCHAIN/polygon-edge/genesis.json \
  --libp2p 0.0.0.0:1478 \
  --jsonrpc 0.0.0.0:8545 \
  --grpc-address 0.0.0.0:9632 \
  --seal > /workspaces/ZEROCHAIN/polygon-edge/node.log 2>&1 &
