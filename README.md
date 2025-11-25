# Intro
This repository contains the example scenarios for a presentation about development workflows with git. Each scenario presents different approaches to a specific flow with explanation on each approach (pros and cons etc.)


# Bootstrap
```
./scripts/bootstrap.sh
```

# List of Scenarios
```
scenarios/01-pull-is-rebase.md
scenarios/02-feature-rebase-on-upstream.md
scenarios/03-commit-grooming.md
scenarios/04-upstream-with-merge.md
scenarios/05-split-commits.md
scenarios/06-code-archeology.md
```

# Repository Automation
Two major approaches:

- Automation via local git hooks
- Automation via remote repository actions

## Automatic Rebase

Either via a remote action or git hook, every push should automatically rebase from its parent (unless there are some temporary limitations). This pushes the error down the error down to the developer, making sure it's not propagated upstream.
