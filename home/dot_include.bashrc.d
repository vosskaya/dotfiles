# .include.bashrc.d
# vim ft=sh
# Source this file at the end of your .bashrc to include
# files from .bashrc.d/
# To overwrite setting add a file .bashrc.d/ZZZ_local
# and put any own setting even overwrites from previous files.
#

# User or program specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
