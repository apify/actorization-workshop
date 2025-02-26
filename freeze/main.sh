#!/bin/bash
set -ex

# Parse input values
input="$(apify actor get-input)"
code="$(jq -r .code <<< "$input")"
language="$(jq -r .language <<< "$input")"

# Generate screenshot and save it to output.png
echo "$code" | 
    freeze -o output.png --language $language

# Upload output.png to key-value store
apify actor set-value output.png --contentType image/png < output.png

# Construct an output object and push it to the dataset (Actor results)
echo '{}' | 
    jq ".image = \"$(apify actor get-public-url output.png)\"" | 
    jq ".language = \"$language\"" |
    apify actor push-data

# Charge some money
apify actor charge code-character --count $(echo "$code" | wc -c)
