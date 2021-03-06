DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100;

CREATE TABLE users(
  id INTEGER PRIMARY KEY NOT NULL DEFAULT nextval('global_seq'),
  name VARCHAR NOT NULL ,
  isAdmin BOOLEAN,
  age INTEGER,
  createdDate TIMESTAMP NOT NULL
)