#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a request and display the size of the body in bytes
response=$(curl -sI "$1" | grep -i Content-Length | awk '{print $2}' | tr -d '\r')
echo "$response"
