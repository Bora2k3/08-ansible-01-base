#!/usr/bin/env bash

set -e

docker-compose up -d
ansible-playbook -i playbook/inventory/prod.yml playbook/site.yml --ask-vault-password
docker-compose down -t 1
