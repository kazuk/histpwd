# Per working directory history for bash

[Create history log per working directory in bash - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/305524/create-history-log-per-working-directory-in-bash)

## install

1. clone this repo
2. add `~/.bashrc` to initialize histpwd

```bash
# LOADING HISTPWD
source "$HOME/histpwd/histpwd.bash"
histpwd_init 
```
