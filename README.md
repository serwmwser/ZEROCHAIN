# MyToken Chain - EVM-совместимая сеть в GitHub Codespaces

## Быстрый старт

1. Откройте этот репозиторий в GitHub Codespaces
2. После создания окружения дождитесь завершения автоматической настройки
3. Инициализируйте блокчейн:
   ```bash
   ./init-blockchain.sh
   ```
4. Запустите ноду:
   ```bash
   ./start-node.sh
   ```
5. Разверните смарт-контракты:
   ```bash
   cd contracts
   truffle migrate --network development
   ```
6. Запустите веб-интерфейс:
   - Откройте файл `frontend/index.html` в Live Server
   - Подключите MetaMask к сети (ChainID: 12345, RPC: http://localhost:8545)

## Доступные команды

- `./start-node.sh` - запуск ноды
- `./stop-node.sh` - остановка ноды
- `truffle console --network development` - консоль для взаимодействия с контрактами

## Портфолио

- JSON-RPC: http://localhost:8545
- GRPC: http://localhost:9632
- Логи ноды: `polygon-edge/node.log`
