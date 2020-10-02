\connect rollup;

CREATE TABLE IF NOT EXISTS ethdb.kvstore (
  eth_key BYTEA PRIMARY KEY,
  eth_data BYTEA NOT NULL,
  prefix BYTEA
);

CREATE INDEX prefix_index ON ethdb.kvstore USING btree (prefix);

/* ROLLBACK SCRIPT
DROP TABLE ethdb.kvstore;
DROP INDEX ethdb.prefix_index;
*/
