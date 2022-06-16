#!/bin/bash
echo 'Removing old files..'
rm -rf files/passwords
mkdir -p files/passwords

echo 'Creating the encryption key and the password file...'
echo -n "Boot password: "
read -s encryption_password
echo

echo -n "Again: "
read -s encryption_password_repeat
echo

if test "$encryption_password" != "$encryption_password_repeat"; then
    echo "Passwords do not match!"
    exit 1
fi

echo -n "User password: "
read -s user_password
echo

echo -n "Again: "
read -s user_password_repeat
echo

if test "$user_password" != "$user_password_repeat"; then
    echo "Passwords do not match!"
    exit 1
fi

echo -n $encryption_password > files/passwords/keyfile
echo $(mkpasswd --method=sha-512 $user_password) > files/passwords/password

echo "Done! Please be sure to remove `files/passwords/keyfile` after installing as it contains your password in cleartext"