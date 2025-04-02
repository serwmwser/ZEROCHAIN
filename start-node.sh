#!/bin/bash

cd polygon-edge

# Start the node
nohup ./polygon-edge server \
  --data-dir ./data \
  --chain ./genesis.json \
  --libp2p 0.0.0.0:1478 \
  --jsonrpc 0.0.0.0:8545 \
  --grpc-address 0.0.0.0:9632 \
  --seal \
  --log-level DEBUG > node.log 2>&1 &

echo "Node started in background. Logs are being written to polygon-edge/node.log"
echo "JSON-RPC endpoint is available at http://localhost:8545"
