#!/bin/bash

set -e

docker-compose exec ratchet0 bash -c "/app/bin/ratchet remote"
