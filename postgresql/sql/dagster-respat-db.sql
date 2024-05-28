CREATE DATABASE dagster_respat;
\c dagster_respat;
CREATE SCHEMA dagster_respat;
CREATE USER dagster_respat WITH PASSWORD 'CHANGE_THIS_PASSWORD';
ALTER DATABASE dagster_respat OWNER TO dagster_respat;
GRANT ALL PRIVILEGES ON DATABASE dagster_respat TO dagster_respat;
GRANT ALL PRIVILEGES ON SCHEMA public TO dagster_respat;
GRANT ALL PRIVILEGES ON SCHEMA dagster_respat TO dagster_respat;

ALTER DATABASE dagster_respat SET search_path TO dagster_respat;
ALTER USER dagster_respat SET search_path TO dagster_respat;