\connect rollup;

CREATE TABLE IF NOT EXISTS ethdb.headers (
  header_key BYTEA PRIMARY KEY,
  header BYTEA NOT NULL,
  height BIGINT NOT NULL
);

CREATE INDEX header_height_index ON ethdb.headers USING brin (height);

/* ROLLBACK SCRIPT
DROP TABLE ethdb.headers;
DROP INDEX ethdb.header_height_index;
*/