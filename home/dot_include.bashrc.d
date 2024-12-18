# .include.bashrc.d
# vim: ft=sh

## Add the following lines at the end of your .bashrc

# . ~/.include.bashrc.d
# if [ -f ~/.bashrc_local ]; then
#     . ~/.bashrc_local
# fi

## To overwrite setting add a file .bashrc_local
## and put in any own settings you want to overwrite. 

# User or program specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
