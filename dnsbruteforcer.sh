#!/bin/bash
wordlist="list.txt"
#target="telecom-sudparis.eu"
target="$1"
echo "subdomain :"
while read subdomain; do
    #echo "subdomain: $subdomain"
    domain=$subdomain.$target
    #echo $domain
    #host $domain;
    host $domain > /dev/null
    if [[ $? -eq "0" ]]; then
        echo "$domain found"
    fi
done < $wordlist
