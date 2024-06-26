CREATE DATABASE itps;
\c itps;

\set itps_password `echo $MAIN_ITPS_USER_PASSWORD`
CREATE USER itps WITH PASSWORD :'itps_password';

GRANT ALL PRIVILEGES ON DATABASE itps TO itps;

CREATE SCHEMA arboviroses;
CREATE SCHEMA respiratorios;

-- Create unaccent extension in pg_catalog schema to be available in all schemas
-- Ref https://stackoverflow.com/questions/12986368/installing-postgresql-extension-to-all-schemas
CREATE EXTENSION unaccent WITH SCHEMA pg_catalog;

GRANT ALL PRIVILEGES ON SCHEMA arboviroses TO itps;
GRANT ALL PRIVILEGES ON SCHEMA respiratorios TO itps;
GRANT ALL PRIVILEGES ON SCHEMA public TO itps;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA public TO itps;
