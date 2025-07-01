CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS embeddings (
  id SERIAL PRIMARY KEY,
  text text,
  metadata jsonb,
  embedding vector(1536),
  created_at timestamptz DEFAULT now()
);