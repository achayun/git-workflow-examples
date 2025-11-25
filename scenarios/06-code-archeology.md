# Code Archaeology - Track the history of a function
Git has an ability to track the history of a specific range in file:

```
git log -L <start line>,<end line>:<file>
```

Or for languages that have a "good enough" function header detection:
```
git log -L :<function>:<file>
```

This will print out the entire history like a recursive git blame for a range or a function. If function, git will detect code moves reasonably well (again, if the language is supported).


