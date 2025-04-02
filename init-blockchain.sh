#!/bin/bash

POLYGON_BIN="/workspaces/ZEROCHAIN/polygon-edge/polygon-edge"
GENESIS_FILE="/workspaces/ZEROCHAIN/polygon-edge/genesis.json"

# Проверка существования бинарника
if [ ! -f "$POLYGON_BIN" ]; then
    echo "❌ Ошибка: Сначала соберите бинарник!"
    echo "Выполните:"
    echo "cd /workspaces/ZEROCHAIN/polygon-edge && go build -o polygon-edge"
    exit 1
fi

# Создание genesis-блока
echo "Создание genesis-блока..."
"$POLYGON_BIN" genesis --consensus ibft \
  --block-gas-limit 10000000 \
  --epoch-size 100000 \
  --premine 0xc2e5650f84Eeb9e4011afbb398108ea302cB17A6:1000000000000000000000 \
  --chain-id 12345 \
  --name "MyChain" \
  --dir "$GENESIS_FILE"

# Проверка результата
if [ -f "$GENESIS_FILE" ]; then
    echo "✅ Genesis-блок создан: $GENESIS_FILE"
else
    echo "❌ Ошибка: Не удалось создать genesis.json"
    exit 1
fi
