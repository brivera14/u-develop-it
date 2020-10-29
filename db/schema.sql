DROP TABLE IF EXISTS parties;
DROP TABLE IF EXISTS candidates;

CREATE TABLE parties (
  id INTEGER PRIMARY KEY,
  names VARCHAR(50),
  descriptions TEXT
);

CREATE TABLE candidates (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  party_id INTEGER UNSIGNED,
  industry_connected BOOLEAN NOT NULL,
  CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);