CREATE TABLE account(
  id SERIAL PRIMARY KEY NOT NULL,
  login CHAR(50) UNIQUE NOT NULL,
  email CHAR(50) UNIQUE NOT NULL,
  password CHAR(50) NOT NULL,
  first_name CHAR(50) NOT NULL,
  last_name CHAR(50) NOT NULL,
  jukebox CHAR(50) NOT NULL
);

CREATE TABLE role(
  id SERIAL PRIMARY KEY NOT NULL,
  name CHAR(25) NOT NULL
);

CREATE TABLE account_role(
  account_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL
);

