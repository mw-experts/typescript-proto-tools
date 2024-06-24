#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 os proto out"
    exit 1
fi

os=$1
proto=$2
out=$3

echo "OS: $os"
echo "Proto: $proto"
echo "Out: $out"

mkdir -p "$out"
protoc-"$os" --plugin="./node_modules/.bin/protoc-gen-ts_proto" --ts_proto_opt=nestJs=true --ts_proto_out="$out" "$proto"
