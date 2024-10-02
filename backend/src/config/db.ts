import dotenv from 'dotenv';
import { ClientConfig } from 'pg';

dotenv.config();

export const dbConfig: ClientConfig = {
  user: process.env.DB_USER || 'postgres',
  password: process.env.DB_PASSWORD || 'mysecretpassword',
  host: process.env.DB_HOST || 'localhost',
  port: parseInt(process.env.DB_PORT || '5432'),
  database: process.env.DB_NAME || 'mini_erp_db',
};
