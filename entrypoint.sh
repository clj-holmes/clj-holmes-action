#!/bin/bash

rules_repository="$1"

cd /github/workspace/
clj-holmes fetch-rules -r "$rules_repository"
clj-holmes scan -p . -t sarif -o clj-holmes.sarif 
