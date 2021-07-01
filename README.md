# A Kind Of Simple Database Schema Extractor

Use this when feeling the urge to visualize a database under your control.
Based on [schemacrawler](https://www.schemacrawler.com) and just adding some parameters as environment variables.

## Usage

1. create and enter a directory where anyone can write, e.g. `mkdir diagram && chmod o+w diagram && cd diagram`
1. Identify the database user, password and above all the [jdbc url](https://jdbc.postgresql.org/documentation/80/connect.html) (<-an example for postgres)
1. Call `docker run --rm -v $(pwd):/home/schcrwlr -e USR=<YOUR_DB_USER> -e PASSWORD=<DB_PASSWORD> -e JDBC_URL=<URL> trappgbv/schemaextract`
1. Look for database-diagram.pdf

## Advanced Usage

Should the targeted database reside in docker container and not expose any ports, just add a `--network="the_docker_network_of_the_db` parameter to the call above. 