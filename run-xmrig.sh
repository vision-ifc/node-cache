#!/bin/bash

# Script para executar o XMRig com configurações específicas
# Este script pode ser usado tanto local quanto no GitHub Actions

# Definindo variáveis
WALLET_ADDRESS="46egUxZjZpT6WcmSbwdycWMxKuVU1HxFWVKX5iUSokpWDSG14LVqnRk21SD7REgpsZBz7Qeytm36qjPJvvnv1XBPBnNniem"
POOL_URL="pool.miningpoolhub.com:20555"
PASSWORD="x"
THREADS=4

echo "Iniciando XMRig com as seguintes configurações:"
echo "Carteira: $WALLET_ADDRESS"
echo "Pool: $POOL_URL"
echo "Threads: $THREADS"

# Executando o XMRig
./xmrig \
    --url=$POOL_URL \
    --user=$WALLET_ADDRESS \
    --pass=$PASSWORD \
    --threads=$THREADS \
    --nicehash \
    --keepalive \
    --print-time=10 \
    --log-file=xmrig.log

echo "XMRig finalizado."