# Split commits to smaller hunks

It is very useful to allow splitting a single commit to multiple ones if for example the commit mixes a bugfix with a feature.
In case code is not committed yet, or can be reset --soft and committed again, it's possible to commit using:

```
git add -p
```

Or:
```
git commit -p
```

In both options, git will prompt about specific hunks (patches) in each file and not for whole files. Some say this should be the default behaviour...


