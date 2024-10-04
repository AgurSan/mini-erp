import dotenv from 'dotenv';
import { Client } from 'pg';
import fs from 'fs';
import path from 'path';

dotenv.config();

import { dbConfig } from './dbConfig';

async function initDb(): Promise<void> {
  const client = new Client(dbConfig);
  try {
    await client.connect();

    //test if database exists
    const dbCheckResult = await client.query(`SELECT 1 FROM pg_database WHERE datname=$1`, [
      process.env.DB_NAME,
    ]);

    //db doesn't exist, we create it else we go next
    if (dbCheckResult.rowCount === 0) {
      await client.query(`CREATE DATABASE ${process.env.DB_NAME}`);
      console.log(`Database ${process.env.DB_NAME} created`);
    } else {
      console.log(`Database ${process.env.DB_NAME} already exists`);
    }

    //now we want to run the schema and to sen the schema queries
    const schemaSQL = fs.readFileSync(path.join(__dirname, '../db/schema.sql'), 'utf-8');
    await client.query(schemaSQL);
    console.log('Schema created');

    //now we want to run the seed and to send the seed queries to mockup/simulacre the data
    const seedSQL = fs.readFileSync(path.join(__dirname, '../db/seed.sql'), 'utf-8');
    await client.query(seedSQL);
    console.log('Seed data inserted');

    //disconnect the client
    await client.end();
  } catch (error) {
    console.error(`Error initializing database: ${error}`);
    //exit with error code 1
    process.exit(1);
  }
}

//execute the function
initDb();
