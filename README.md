# RDF4J Timeout Test

To reproduce timeout problem:

### Build Docker image

`rdf4j-workbench:5.0.3-SNAPSHOT` from this branch: https://github.com/eclipse-rdf4j/rdf4j/pull/5125

My own build can be pulled from Docker Hub: nanopub/rdf4j-workbench:5.0.3-SNAPSHOT

### Init directories

Make data directory with permissions:

    $ ./init-dirs.sh

### Set repo in Docker Compose

Edit `docker-compose.yml` to set rdf4j image:

- `eclipse/rdf4j-workbench:5.0.2` (latest version)
- `nanopub/rdf4j-workbench:5.0.3-SNAPSHOT` (with timeout fix)
- or own built image

### Run Docker Compose

Make sure it's down first:

    $ (sudo) docker compose down

Start fresh containers:

    $ (sudo) docker compose up -d

### Create 3 repos (if not created yet)

    $ curl http://localhost:8080/rdf4j-server/repositories/repo1 -H 'Content-Type: text/turtle' --upload-file create-repo1.ttl
    $ curl http://localhost:8080/rdf4j-server/repositories/repo2 -H 'Content-Type: text/turtle' --upload-file create-repo2.ttl
    $ curl http://localhost:8080/rdf4j-server/repositories/repo3 -H 'Content-Type: text/turtle' --upload-file create-repo3.ttl

### Run Query 1: Works

Run a query that works (see script for details):

    $ ./run-query1.sh

Takes a few seconds while RDF4J is starting up, then works and returns:

    x
    0
    1
    2
    ...

### Run Query 2: Fails or Hangs

Run second query (see script for details):

    $ ./run-query2.sh

For the version with the timeout fix, this returns an error after a while:

    <!doctype html><html lang="en"><head><title>HTTP Status 500 – Internal Server Error</title>
    ...
    Timeout waiting for connection from pool
    ...

For the latest version, this hangs forever.

### Run Query 1 again: Hangs now

Running query 1 again, this fails now in both cases:

    <!doctype html><html lang="en"><head><title>HTTP Status 500 – Internal Server Error</title>
    ...
    Timeout waiting for connection from pool
    ...

The service doesn't recover and there are no error messages in the logs, except the ones shown above.

