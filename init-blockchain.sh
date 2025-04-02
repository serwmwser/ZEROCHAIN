#!/bin/bash

POLYGON_BIN="/workspaces/ZEROCHAIN/polygon-edge/polygon-edge"
GENESIS_FILE="/workspaces/ZEROCHAIN/polygon-edge/genesis.json"

"$POLYGON_BIN" genesis --consensus ibft \
  --block-gas-limit 10000000 \
  --epoch-size 100000 \
  --premine 0xc2e5650f84Eeb9e4011afbb398108ea302cB17A6:1000000000000000000000 \
  --chain-id 12345 \
  --name "MyTokenChain" \
  --dir "$GENESIS_FILE"
