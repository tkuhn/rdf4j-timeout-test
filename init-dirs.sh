#!/usr/bin/env bash

cd "$(dirname "$0")"

mkdir -p data/rdf4j/data
mkdir -p data/rdf4j/logs
mkdir -p data/rdf4j/server

sudo chmod -R 777 data
