#!/usr/bin/env bash
set -ex
run(){
  docker-compose build
  docker-compose up
}

$@
