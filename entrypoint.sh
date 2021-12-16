#!/bin/bash

rules_repository="$1"
output_type="$2"
if [ $3 == "true" ]; then fail_on_result="--fail-on-result"; else fail_on_result="--no-fail-on-result"; fi

cd /github/workspace/
clj-holmes fetch-rules -r "$rules_repository"
clj-holmes scan -p . $fail_on_result -t "$output_type" -o clj-holmes.sarif
