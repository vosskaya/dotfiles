-- init.lua
-- obtain newest version of this file with
-- curl --create-dirs -o ~/.config/nvim/init.lua https://raw.githubusercontent.com/vosskaem/dotfiles/refs/heads/main/home/dot_config/nvim/init.lua

-- load plugins
require("config.lazy")

-- load common settings from vimrc
vim.cmd('source ~/.vim/vimrc')

-- old style vim config commands:
vim.cmd([[

"set clipboard=unnamedplus

]])


-- Include a local configuration if exists
local local_init = vim.fn.stdpath('config') .. '/init_local.lua'
if vim.fn.filereadable(local_init) == 1 then
    dofile(local_init)
end


