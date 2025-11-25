# Scenario 2: Feature branches rebase on main

```
cd alice-repo
git checkout -b feature/do-something
echo "feature: init" >> main.py
git commit -am "Alice: start feature"
```

```
cd ../bob-repo
git checkout main
echo "conflict from Bob" >> main.py
git commit -am "Bob: conflicting change on main"
git push origin main
```

```
cd ../alice-repo
git fetch && git merge origin/main
# Conflict occurs
```

```
# Alice fixes conflict
git add main.py
git commit  # Creates a merge commit
```

## Result

```
git log --graph --oneline --decorate
```

A merge commit was created with the *contents* of the conflict

## Fix with Rebase

```
git reset --hard "$(git log --grep='Alice: start feature' --format='%H' -n 1)
git fetch origin
git rebase origin/main
# Conflict once again
```

```
# Alice fixes conflicts
git add main.py
git rebase --continue
```

## Result

```
git log --graph --oneline --decorate
```

Linear history with only the actual commits

