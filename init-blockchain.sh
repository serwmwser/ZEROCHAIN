#!/bin/bash

cd polygon-edge

# Generate genesis block
./polygon-edge genesis --consensus ibft \
  --block-gas-limit 10000000 \
  --epoch-size 100000 \
  --premine 0xc2e5650f84Eeb9e4011afbb398108ea302cB17A6:1000000000000000000000 \
  --chain-id 12345 \
  --name "MyTokenChain" \
  --dir ./genesis.json

echo "Genesis file created at polygon-edge/genesis.json"
