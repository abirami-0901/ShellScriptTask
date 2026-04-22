#!/bin/bash

echo "Checking HTTP status of guvi.in"

code=$(curl -o /dev/null -s -w "%{http_code}" https://www.guvi.in)

echo "HTTP Code: $code"

if [ "$code" -eq 200 ]; then
    echo "Success"
else
    echo "Failure"
fi