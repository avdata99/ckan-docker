#!/bin/sh

set -a
. ./.env
pwfile=".pw"
touch ${pwfile}; chmod 600 ${pwfile}
#truncate -s 0 ${pwfile}
python3 ./generate_passwords.py
chmod 400 ${pwfile}
sleep 1