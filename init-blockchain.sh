#!/bin/bash

cd polygon-edge

# Generate genesis block
./polygon-edge genesis --consensus ibft \
  --block-gas-limit 10000000 \
  --epoch-size 100000 \
  --premine 0x85da99c8a7c2c95964c8efd687e95e632fc533d6:1000000000000000000000 \
  --chain-id 12345 \
  --name "MyTokenChain" \
  --dir ./genesis.json

echo "Genesis file created at polygon-edge/genesis.json"
