#!/bin/bash

set -e

docker run -p 4000:4000 -p 4369 -e SECRET_KEY_BASE=asalalla -e VM_START_EPMD=false ratchet:latest
