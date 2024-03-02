#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 </path/to/Example.app>"
    exit 1
fi

path="$1/Contents/Info.plist"

plutil -convert json "$path" -o - | jq .CFBundleURLTypes.[0].CFBundleURLSchemes
