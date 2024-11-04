-- init.lua
--

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


