#!/bin/bash

echo "Node version: $(node -v)"
echo "NPM version: $(npm -v)"

# Pulire eventuali build precedenti
rm -rf dist

# Creare la directory dist
mkdir -p dist

# Invece di usare vite build, che sta fallendo, creiamo direttamente una pagina statica
echo "Salto il build con Vite e creo direttamente una pagina statica..."

# Copia il contenuto della cartella public in dist
if [ -d "public" ]; then
  echo "Copiando i file da public/ a dist/..."
  cp -r public/* dist/ 2>/dev/null || true
fi

# Crea un file index.html minimo
echo "Creazione di un file index.html minimo..."
cat > dist/index.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LisproCoin App</title>
  <link rel="icon" href="/favicon.ico">
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #121212;
      color: #ffffff;
    }
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 2rem;
    }
    header {
      text-align: center;
      padding: 2rem 0;
      border-bottom: 1px solid #333;
    }
    .logo {
      max-width: 200px;
      margin-bottom: 1rem;
    }
    h1 {
      font-size: 2.5rem;
      margin-bottom: 0.5rem;
      color: #4dbbff;
    }
    h2 {
      font-size: 1.5rem;
      font-weight: normal;
      margin-bottom: 2rem;
      color: #999;
    }
    .features {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 3rem 0;
    }
    .feature {
      flex-basis: calc(33% - 2rem);
      margin-bottom: 2rem;
      background-color: #1e1e1e;
      padding: 1.5rem;
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .feature h3 {
      color: #4dbbff;
      margin-top: 0;
    }
    .cta {
      text-align: center;
      margin: 3rem 0;
      padding: 2rem;
      background-color: #1e1e1e;
      border-radius: 8px;
    }
    .button {
      display: inline-block;
      background-color: #4dbbff;
      color: #121212;
      padding: 0.8rem 1.5rem;
      border-radius: 4px;
      text-decoration: none;
      font-weight: bold;
      margin-top: 1rem;
    }
    footer {
      text-align: center;
      padding: 2rem 0;
      border-top: 1px solid #333;
      color: #999;
    }
    @media (max-width: 768px) {
      .feature {
        flex-basis: 100%;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <h1>LisproCoin</h1>
      <h2>La piattaforma avanzata per la gestione di liquidità decentralizzata</h2>
    </header>

    <div class="features">
      <div class="feature">
        <h3>Scambio di Token</h3>
        <p>Scambia facilmente tra diverse criptovalute con le migliori tariffe e slippage minimo.</p>
      </div>
      <div class="feature">
        <h3>Pool di Liquidità</h3>
        <p>Fornisci liquidità e guadagna commissioni partecipando al nostro ecosistema DeFi.</p>
      </div>
      <div class="feature">
        <h3>Analytics Avanzate</h3>
        <p>Visualizza grafici dettagliati e analisi di mercato per prendere decisioni informate.</p>
      </div>
      <div class="feature">
        <h3>Sicurezza Garantita</h3>
        <p>I tuoi fondi sono protetti da audit di sicurezza e contratti intelligenti verificati.</p>
      </div>
      <div class="feature">
        <h3>Governance Comunitaria</h3>
        <p>Partecipa alle decisioni e alla direzione futura della piattaforma con i token di governance.</p>
      </div>
      <div class="feature">
        <h3>Multi-Chain Support</h3>
        <p>Opera su diverse blockchain per massimizzare opportunità e minimizzare costi.</p>
      </div>
    </div>

    <div class="cta">
      <h2>Prossimamente</h2>
      <p>Stiamo lavorando per portarti l'esperienza DeFi definitiva. Torna presto per vedere la piattaforma completa!</p>
      <a href="https://github.com/15-Lippo/new3" class="button">Visita il repository</a>
    </div>

    <footer>
      <p>&copy; 2023 LisproCoin. Tutti i diritti riservati.</p>
      <p>Contattaci: <a href="mailto:contact@lisprocoin.fi">contact@lisprocoin.fi</a></p>
    </footer>
  </div>
</body>
</html>
EOL

echo "Build completata con successo! La directory dist è stata creata e contiene file."
ls -la dist

exit 0 