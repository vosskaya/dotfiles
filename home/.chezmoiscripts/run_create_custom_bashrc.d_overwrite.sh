#!/bin/sh
if [ ! -f ~/.bashrc.d/ZZZ_custom_overwrite ] ; then
    cat <<EOF > ~/.bashrc.d/ZZZ_custom_overwrite
## This is a custom overwrite to things defined in other scripts before.
## It will never be overwritten by chezmoi!

## Examples:

#export EDITOR=emacs
#export VISUAL=$EDITOR
EOF
fi


