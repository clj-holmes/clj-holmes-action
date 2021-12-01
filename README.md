# clj-holmes action

Action to execute [clj-holmes](https://github.com/clj-holmes/clj-holmes) in Clojure/Clojurescript projects.

# Getting Started
Simply add the following snippet to your GitHub actions workflow.

```
- name: Scan
  uses: clj-holmes/clj-holmes-action@main
```

It's also possible to specify a custom rule-repository (public or private)
```
- name: Scan
  uses: clj-holmes/clj-holmes-action@main
  with:
    rules-repository: 'git://org/private-rules-repo#main'
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
