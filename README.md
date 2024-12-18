My personal config files
=========================

## Install chezmoi

Use your package manager.

or

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

or

```sh
snap install chezmoi --classic
```

## Get the configs on a new machine

```sh
chezmoi init $GITHUB_USERNAME
# or
chezmoi init --apply $GITHUB_USERNAME
```


## Add this lines to the end of your .bashrc

```sh
. ~/.include.bashrc.d
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
```
