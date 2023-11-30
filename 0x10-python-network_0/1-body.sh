#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a GET request and display the body if the status code is 200
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

if [ "$response" -eq 200 ]; then
    body=$(curl -s "$1")
    echo "$body"
fi
