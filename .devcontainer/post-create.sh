#!/bin/bash

# Install basic tools
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential git curl wget

# Install Truffle
sudo npm install -g truffle

# Clone and build Polygon Edge
git clone https://github.com/0xPolygon/polygon-edge.git
cd polygon-edge
go build -o polygon-edge
cd ..

# Install OpenZeppelin contracts
cd contracts
npm init -y
npm install @openzeppelin/contracts
cd ..

# Make scripts executable
chmod +x *.sh

echo "Setup complete! Your EVM environment is ready."
