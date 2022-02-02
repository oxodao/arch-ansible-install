#!/bin/bash
rm -rf files
mkdir files

echo -n Boot password:
read -s encryption_password
echo

echo -n User password:
read -s user_password
echo

echo -n $encryption_password > files/keyfile
echo $(mkpasswd --method=sha-512 $user_password) > files/password
