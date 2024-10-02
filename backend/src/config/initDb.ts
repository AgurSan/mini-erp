import dotenv from 'dotenv';
import { Client } from 'pg';
import fs from 'fs';
import path from 'path';

dotenv.config();

import { dbConfig } from '../src/config/db';

async function initDb(): Promise<void> {
  const client = new Client(dbConfig);
}
