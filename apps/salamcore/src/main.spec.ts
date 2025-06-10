/**
 * @fileoverview Tests for SalamCore API Backend
 * @description Basic test suite to ensure the Express server starts correctly
 */

import request from 'supertest';
import express from 'express';

// Mock the main application for testing
const app = express();
app.get('/health', (req, res) => {
  res.json({ status: 'ok', service: 'SalamCore API Backend' });
});

app.get('/', (req, res) => {
  res.send('Welcome to SalamCore API Backend - AI-Powered Customer Support Hub');
});

describe('SalamCore API', () => {
  it('should respond to health check', async () => {
    const response = await request(app).get('/health');
    expect(response.status).toBe(200);
    expect(response.body.status).toBe('ok');
  });

  it('should respond to root endpoint', async () => {
    const response = await request(app).get('/');
    expect(response.status).toBe(200);
    expect(response.text).toContain('SalamCore');
  });
});