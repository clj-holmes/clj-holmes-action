#!/bin/bash

rules_repository="$1"
output_type="$2"
output_file="$3"
fail_on_result="$4"
path="$5"

if [[ -d ${working_directory} ]]; then
  path="/github/workspace/${path}"
else
  path="/github/workspace/"
fi

if [[ $verbose == "true" ]]; then
    verbose_cmd="--verbose"
else
    verbose_cmd="--no-verbose"
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

cd ${path}
clj-holmes fetch-rules -r "$rules_repository"
clj-holmes scan -p . $fail_on_result_cmd $verbose_cmd $output_cmd
