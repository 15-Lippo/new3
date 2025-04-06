# LisproCoin App

Un'applicazione per la gestione della liquidità decentralizzata e il trading di criptovalute basata su LisproCoin.

[![Netlify Status](https://api.netlify.com/api/v1/badges/your-netlify-id/deploy-status)](https://app.netlify.com/sites/lisprocoin/deploys)
[![Vercel](https://therealsujitk-vercel-badge.vercel.app/?app=lisprocoin)](https://lisprocoin.vercel.app)

## Caratteristiche

- **Scambio di token**: Scambia facilmente tra diverse criptovalute
- **Pools di liquidità**: Crea e gestisci pool di liquidità
- **Grafici di mercato**: Visualizza grafici dettagliati delle criptovalute
- **Portfolio**: Monitora i tuoi investimenti in un unico posto
- **Interfaccia intuitiva**: Design moderno e facile da usare

## Requisiti

- Node.js >= 14
- NPM >= 7 o Yarn >= 1.22

## Installazione

```bash
# Clona il repository
git clone https://github.com/15-Lippo/new3.git
cd new3

# Installa le dipendenze
npm install
# oppure
yarn install

# Avvia il server di sviluppo
npm run dev
# oppure
yarn dev
```

## Build per produzione

```bash
# Compila e minimizza per la produzione
npm run build
# oppure
yarn build
```

## Deploy su Vercel

Il modo più semplice e affidabile per deployare questa applicazione è utilizzare Vercel:

1. Crea un account su [Vercel](https://vercel.com/) se non ne hai già uno
2. Installa Vercel CLI: `npm install -g vercel`
3. Nel terminale, nella directory del progetto, esegui: `vercel`
4. Segui le istruzioni per completare il deploy

In alternativa, puoi fare il deploy direttamente da GitHub:
1. Forka questo repository
2. Accedi a [Vercel](https://vercel.com/)
3. Clicca su "New Project" e importa il repository
4. Vercel rileverà automaticamente le configurazioni
5. Clicca su "Deploy"

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/git/external?repository-url=https%3A%2F%2Fgithub.com%2F15-Lippo%2Fnew3)

## Deploy su Netlify

Questa applicazione è configurata per essere deployata anche su Netlify:

1. Crea un account su [Netlify](https://www.netlify.com/) se non ne hai già uno
2. Clicca sul pulsante "Nuovo sito da Git" nella dashboard Netlify
3. Collega il tuo account GitHub e seleziona il repository
4. Configura le impostazioni di build:
   - Build command: `bash netlify-build.sh`
   - Publish directory: `dist`
5. Clicca su "Deploy site"

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/15-Lippo/new3)

## Contribuire

I contributi sono benvenuti! Per favore, segui questi passaggi:

1. Fork del repository
2. Crea un branch per la tua funzionalità (`git checkout -b feature/amazing-feature`)
3. Commit delle tue modifiche (`git commit -m 'Aggiunta nuova funzionalità'`)
4. Push al branch (`git push origin feature/amazing-feature`)
5. Apri una Pull Request

## Licenza

Distribuito con licenza MIT. Vedi `LICENSE` per maggiori informazioni.

## Contatti

- Sito web: [lisprocoin.fi](https://lisprocoin.fi)
- Email: [contact@lisprocoin.fi](mailto:contact@lisprocoin.fi)
- Twitter: [@LisproCoin](https://twitter.com/LisproCoin)
- Discord: [LisproCoin Community](https://discord.gg/lisprocoin)
