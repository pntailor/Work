#!/bin/sh
# install_service <inventory> <service_name> <playbook>
ansible-playbook -i $1 --limit=$2 -k -v $3
