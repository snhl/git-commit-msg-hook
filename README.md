I could not find any implementation of [The Seven Rules of a Great Git Commit Message](https://chris.beams.io/posts/git-commit/)
so I did a quick-and-dirty implementation in Python3.

This was mostly meant as an exercise for myself to play around with Git hooks,
but if anyone can use it be my guest. If you see any bugs in the implementation
or tests let me know!

Run all tests with

```
./run-tests.sh
```

or a single test with

```
./commit-msg tests/positive-tests/subject_too_long.txt
```

Make a symbolic link or copy `commit-msg` into the `.git/hooks` folder of your
Git repository for instant pleasure.
