CREATE DATABASE dagster_arbo;
\c dagster_arbo;
CREATE SCHEMA dagster_arbo;

\set dagster_password `echo $DAGSTER_PASSWORD`
CREATE USER dagster_arbo WITH PASSWORD :'dagster_password';

ALTER DATABASE dagster_arbo OWNER TO dagster_arbo;
GRANT ALL PRIVILEGES ON DATABASE dagster_arbo TO dagster_arbo;
GRANT ALL PRIVILEGES ON SCHEMA public TO dagster_arbo;
GRANT ALL PRIVILEGES ON SCHEMA dagster_arbo TO dagster_arbo;

ALTER DATABASE dagster_arbo SET search_path TO dagster_arbo;
ALTER USER dagster_arbo SET search_path TO dagster_arbo;