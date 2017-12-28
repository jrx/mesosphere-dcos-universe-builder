#!/usr/bin/env bash

docker build -t universe-builder .
docker rm -f /builder
docker run -it --name=builder -v /var/run/docker.sock:/var/run/docker.sock universe-builder:latest /bin/bash
