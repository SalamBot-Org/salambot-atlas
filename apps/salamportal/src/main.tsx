/**
 * 🖥️ SalamPortal - Interface de Gestion Agents
 * 
 * @description Interface web pour les opérateurs humains et agents SalamBot
 *              Dashboard de gestion avec collaboration temps réel et reporting
 *              Migration prévue vers Next.js 15 en Phase 2
 * 
 * @version 3.0
 * @date 9 juin 2025
 * @team SalamBot Team
 * @contact info@salambot.ma
 * @repository https://github.com/SalamBot-Org/salambot-atlas
 * 
 * @stack React 19 + Vite + TypeScript 5.8.3
 * @deployment Vercel/Netlify (Static)
 * @features Dashboard agents, Analytics, Collaboration temps réel
 * 
 * @note Application placeholder pour validation CI/CD
 *       Sera remplacée par l'implémentation complète en Phase 1
 */

import { StrictMode } from 'react';
import * as ReactDOM from 'react-dom/client';
import App from './app/app';

const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);

root.render(
  <StrictMode>
    <App />
  </StrictMode>
);
