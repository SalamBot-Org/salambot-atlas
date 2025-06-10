/**
 * SalamCore - API Backend Principal
 *
 * @description Point d'entree principal de l'API backend SalamBot
 *              Heberge la logique metier avec les flows Genkit pour l'IA
 *              Architecture serverless optimisee pour Google Cloud Run
 *
 * @version 3.0
 * @date 9 juin 2025
 * @team SalamBot Team
 * @contact info@salambot.ma
 * @repository https://github.com/SalamBot-Org/salambot-atlas
 *
 * @stack Node.js 22 + Express + TypeScript 5.8.3
 * @deployment Google Cloud Run (Serverless)
 * @features Flows Genkit IA, APIs REST, Services de données
 *
 * @note Application placeholder pour validation CI/CD
 *       Sera remplacee par l'implementation complete en Phase 1
 */

import express from 'express';

const host = process.env['HOST'] ?? 'localhost';
const port = process.env['PORT'] ? Number(process.env['PORT']) : 3000;

const app = express();

// Route de sante pour les checks de deploiement
app.get('/health', (_req, res) => {
  res.status(200).json({
    status: 'healthy',
    service: 'SalamCore',
    version: '3.0-placeholder',
    timestamp: new Date().toISOString(),
  });
});

// Route principale temporaire
app.get('/', (_req, res) => {
  res.json({
    message: 'SalamCore API Backend - Placeholder',
    description: 'API principale pour SalamBot',
    endpoints: {
      health: '/health',
      docs: '/docs (a venir)',
      api: '/api/v1 (a venir)',
    },
  });
});

app.listen(port, host, () => {
  console.log(`SalamCore API demarree sur http://${host}:${port}`);
  console.log(`Health check: http://${host}:${port}/health`);
});
