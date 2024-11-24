#!/bin/bash

echo -n "Please enter the account number: "
read account

echo -n "Please enter the secrect key: "
read secret_key

echo -n "Please enter the node number: "
read ordinal

echo -n "Please enter the domain number: "
read domain


wget  https://raw.githubusercontent.com/EvernodeXRPL/evernode-24-resources/main/sashimono/installer/evernode.sh 

sudo apt install expect

chmod +x evernode.sh
chmod +x transfer.exp
chmod +x register.exp

expect ./transfer.exp $account $secret_key

expect ./register.exp $account $secret_key $ordinal $domain