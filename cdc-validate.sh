#!/bin/sh
ansible-playbook -i inventory  -k -v cdc-validate.yml
