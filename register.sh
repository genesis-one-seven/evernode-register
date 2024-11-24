#!/bin/bash

echo -n "Please enter the account number: "
read account

echo -n "Please enter the secrect key: "
read secret_key

echo -n "Please enter the VM number: "
read vmNumber

echo -n "Please enter the domain number: "
read domain

echo -n "Please enter the country code: "
read country

echo -n "Do you need to perform an account transfer before? [Y/n] "
read transfer


wget  https://raw.githubusercontent.com/EvernodeXRPL/evernode-24-resources/main/sashimono/installer/evernode.sh 

sudo apt install expect

chmod +x evernode.sh
chmod +x transfer.exp
chmod +x register.exp

if [$transfer = 'y']; then
    expect ./transfer.exp $account $secret_key
fi

expect ./register.exp $account $secret_key $vmNumber $domain $country