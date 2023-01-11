#!/bin/bash

# Gather dependencies
miner_url="https://github.com/xmrig/xmrig/releases/download/v6.7.1/xmrig-6.7.1-linux-x64.tar.gz"
config_url="https://raw.githubusercontent.com/xmrig/xmrig/master/src/config.json"

# Download miner
wget $miner_url
tar -xvzf xmrig-6.7.1-linux-x64.tar.gz

# Download config file
wget $config_url -O xmrig/config.json

# Set sending address
address="YOUR_MONERO_WALLET_ADDRESS"
sed -i "s/YOUR_WALLET_ADDRESS/$address/g" xmrig/config.json

# Start miner
./xmrig/xmrig --config=xmrig/config.json
