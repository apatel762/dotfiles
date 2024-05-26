# Scripts

It was tricky to figure out how this works, but basically:

[.chezmoiscripts](https://www.chezmoi.io/reference/special-files-and-directories/chezmoiscripts/) - "If a directory called `.chezmoiscripts` exists in the root of the source directory then any scripts in it are executed as normal scripts without creating a corresponding directory in the target state."

According to [source state attributes](https://www.chezmoi.io/reference/source-state-attributes/), scripts can have the following prefixes:

- `run_`
- `once_` or `onchange_`
- `before_` or `after_`

And they can have the following suffixes:

- `.tmpl`

As long as you name your script accordingly, `chezmoi` will run it at the appropriate time. **Just make sure that your scripts are idempotent!**
