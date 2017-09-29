#!/bin/bash

set -u

target="${1}"

if [ "${target}" = "apps" ]; then
    options="-K"
fi

ansible-playbook ${target}/main.yml -i inventory ${options}
