# clj-holmes action

Action to execute [clj-holmes](https://github.com/clj-holmes/clj-holmes) in Clojure/Clojurescript projects.

# Getting Started
Simply add the following snippet to your GitHub actions workflow.

```
- name: Scan
  uses: clj-holmes/clj-holmes-action@main
```

## Inputs
It's also possible to specify the following:
- rule-repository, it can be an public or private git repository [Default: git://clj-holmes/clj-holmes-rules#main]
- output-type (json, sarif or stdout) [Default: sarif]
- output-file [Default: clj_holmes_scan_results.txt]
- fail-on-result (true or false) [Default: false]

```
- name: Scan
  uses: clj-holmes/clj-holmes-action@main
  with:
    rules-repository: 'git://org/private-rules-repo#main'
    output-type: 'json'
    output-file: 'scan-results.json'
    fail-on-result: 'true'
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
