#!/bin/bash

# Абсолютные пути
POLYGON_BIN="/workspaces/ZEROCHAIN/polygon-edge/polygon-edge"
GENESIS_FILE="/workspaces/ZEROCHAIN/polygon-edge/genesis.json"

# Ваши параметры (замените только адрес при необходимости)
"$POLYGON_BIN" genesis --consensus ibft \
  --block-gas-limit 10000000 \
  --epoch-size 100000 \
  --premine 0xc2e5650f84Eeb9e4011afbb398108ea302cB17A6:1000000000000000000000 \
  --chain-id 12345 \
  --name "MyCustomChain" \
  --dir "$GENESIS_FILE"

# Проверка создания
if [ -f "$GENESIS_FILE" ]; then
  echo "✅ Genesis-блок создан: $GENESIS_FILE"
  echo "Содержимое:"
  jq . "$GENESIS_FILE"
else
  echo "❌ Ошибка! Файл genesis.json не создан"
  exit 1
fi
