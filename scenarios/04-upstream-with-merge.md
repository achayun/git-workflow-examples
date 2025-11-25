# Code Goes Back to Main via Merge (no-ff)

```
git checkout main
git merge feature/refactor-auth # ff implicit
```

No merge commit but also no context

```
git reset --hard origin/main
git merge --no-ff feature/refactor-auth
```

This is a great place to put a merge commit with context about the feature, like we do in PR's

