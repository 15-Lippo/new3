#!/bin/bash

echo "Node version: $(node -v)"
echo "NPM version: $(npm -v)"

# Installazione delle dipendenze
npm ci

# Generazione tokenlist (se richiesto)
npm run generate:tokenlists || echo "Continuo senza generare tokenlists"

# Build del progetto
npm run build:withouttokenlists

echo "Build completata con successo!" 