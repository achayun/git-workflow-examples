#Scenario 1: Pull is rebase

## Pull with merge
```
cd alice-repo
echo "# by Alice" >> main.py
git commit -am "Alice: update main.py"
git push origin main
```

```
cd ../bob-repo
echo "# by Bob" >> main.py
git commit -am "Bob: update main.py"
```

```
git config pull.rebase false  # Explicitly disable rebase
git pull origin main
# Conflict occurs
```

```
# Fix conflict
git add main.py
git commit
```

## Result
```
git log --graph --oneline --decorate

```

## Pull with rebase
```
git reset --hard HEAD~1
git config pull.rebase true
```

```
git pull origin main
```

Resolve and:
```
# Fix conflict in main.py
git add main.py
git rebase --continue
git push origin main
```

## Result

```
git log --graph --oneline --decorate
```


