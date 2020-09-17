#!/bin/bash

echo "Welcome to URL Finder! Please use for good, not for evil."

echo "some data for the file" >> ./file.txt

read -p "Enter the base URL to search (https://www.google.ca/): " url
read -p "Enter the number of characters in the UUID: " uuid_num

count=0





while true
do
    gen_uuid="head /dev/urandom | tr -dc A-Za-z0-9 | head -c $uuid_num"
    eval "$gen_uiid"
    uuid=$(eval "$gen_uuid")

    check_url="curl -Is $url$uuid | head -1 "
    eval "$check_url"
    response=$(eval "$check_url")

    if [[ $response == *"200"* ]]; then
        echo "Success! "$url$uuid" is a valid site." 
        echo "$url$uuid" >> ./success.txt
    fi
    echo "Reply is "$response".Tested $count URLs. " && ((count++));
done



