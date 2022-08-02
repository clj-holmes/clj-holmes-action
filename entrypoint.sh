#!/bin/bash

rules_repository="$1"
output_type="$2"
output_file="$3"
fail_on_result="$4"

if [[ $no_verbose == "true" ]]; then
    no_verbose_cmd="--no-verbose"
else
    no_verbose_cmd=""
fi

if [[ $fail_on_result == "true" ]]; then
  fail_on_result_cmd="--fail-on-result";
else
  fail_on_result_cmd="--no-fail-on-result";
fi

if [[ $output_type == "stdout" ]]; then
  output_cmd="-t $output_type";
else
  output_cmd="-t $output_type -o $output_file";
fi

cd /github/workspace/
clj-holmes fetch-rules -r "$rules_repository"
clj-holmes scan -p . $fail_on_result_cmd $no_verbose_cmd $output_cmd
