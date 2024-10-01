#!/usr/bin/env bash


ensure_trailing_slash() {
    local path="$1"
    if [[ "$path" != */ ]]; then
        path="${path}/"
    fi
    echo "$path"
}

show_usage() {
    printf 'Usage: %s </path/to/Example.app>' "$0"
    exit 1
}


main(){
    if [[ -z "$1" ]]; then
        show_usage
    else
        path="$1"
        full_path="$(ensure_trailing_slash "$path")Contents/Info.plist"
        plutil -convert json "$full_path" -o - | jq '.CFBundleURLTypes | map(.CFBundleURLSchemes)'
    fi
}

main "$@"