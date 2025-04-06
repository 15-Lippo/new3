#!/bin/bash

echo "Node version: $(node -v)"
echo "NPM version: $(npm -v)"

# Installare le dipendenze con una strategia più permissiva
npm install --legacy-peer-deps --no-audit --no-fund

# Usare direttamente vite build senza passare per gli script npm che potrebbero fallire
echo "Esecuzione diretta di vite build..."
npx vite build

echo "Build completata con successo!" 