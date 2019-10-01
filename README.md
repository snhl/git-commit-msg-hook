Quick-and-dirty implementation of the [The Seven Rules of a Great Git Commit Message](https://chris.beams.io/posts/git-commit/)
in Python3 as a Git commit message hook.

Run all tests with

```
./run-tests.sh
```

or a single test with

```
./commit-msg tests/positive-tests/subject_too_long.txt
```

Copy `commit-msg` into the `.git/hooks` folder of your Git
repository for instant pleasure.
