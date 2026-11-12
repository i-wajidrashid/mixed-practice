#!/usr/bin/env bash

if [ "$#" -ne 1 ] || [ ! -d "$1" ]; then
    echo "Error: Please provide one valid directory path." >&2
    exit 1
fi

find "$1" -maxdepth 1 -type f -exec file --mime-type -b {} + | sort | uniq -c | sort -rn
