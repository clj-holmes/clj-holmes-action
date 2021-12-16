#!/bin/bash

rules_repository="$1"
output_type="$2"
fail_on_result="$3"

if [[ $fail_on_result == "true" ]]; then
  fail_on_result_cmd="--fail-on-result";
else
  fail_on_result_cmd="--no-fail-on-result";
fi

cd /github/workspace/
clj-holmes fetch-rules -r "$rules_repository"
clj-holmes scan -p . $fail_on_result_cmd -t "$output_type" -o clj-holmes.sarif
