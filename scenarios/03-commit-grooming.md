# Commit Grooming

```
cd alice-repo
git checkout main
git pull
git checkout -b feature/refactor-auth
```

```
echo "attempt 1" >> auth.py
git add auth.py
git commit -m "oops: broke login"

echo "fix login" >> auth.py
git commit -am "fix: login works now"

echo "refactor1" >> auth.py
git commit -am "refactor: extract method"

echo "add forgot password" >> auth.py
git commit -am "feat: forgot password flow"
```

```
git checkout main
git merge feature/refactor-auth
```

Not good, let's try squashed merge
```
git reset --hard origin/main
git merge --squash feature/refactor-auth
git commit -m "feat: refactor login and add forgot password"
```
Finally, rebase -i
```
git reset --hard origin/main
git checkout feature/refactor-auth
git rebase -i main
```


