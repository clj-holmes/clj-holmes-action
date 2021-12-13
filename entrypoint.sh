#!/bin/bash

rules_repository="$1"
output_type="$2"

cd /github/workspace/
clj-holmes fetch-rules -r "$rules_repository"
clj-holmes scan -p . -t "$output_type" -o clj-holmes.sarif
