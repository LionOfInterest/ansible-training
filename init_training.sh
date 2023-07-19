#! /bin/bash

set -eu

if [[ -n "$(docker-compose ps -aq)" ]]; then
	docker-compose stop
	docker-compose down
fi

### Generate SSH keys for the control node
if [[ ! -f .id_rsa ]]; then
	ssh-keygen -t rsa -b 4096 -f .id_rsa -N ''
fi

docker-compose build --build-arg ssh_pub_key="$(cat .id_rsa.pub)" --build-arg ssh_pri_key="$(cat .id_rsa)"
docker-compose up -d
