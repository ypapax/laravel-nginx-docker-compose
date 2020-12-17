#!/usr/bin/env bash
set -ex
run(){
  docker-compose build
  docker-compose up
}

stack(){
    stack=laran
	docker stack rm "$stack"
	yml=./docker-compose.yml
	docker-compose -f $yml build --parallel
	docker stack deploy -c $yml $stack
}

$@
