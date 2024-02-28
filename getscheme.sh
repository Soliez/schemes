#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 </path/to/Example.app>"
    exit 1
fi

path="$1/Contents/Info.plist"

temp_file=$(mktemp)

plutil -convert json "$path" -o "$temp_file"

cat "$temp_file" | jq .CFBundleURLTypes.[0].CFBundleURLSchemes

rm "$temp_file"