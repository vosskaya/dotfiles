-- local additions
require("config.lazy")
local local_init = vim.fn.stdpath("config") .. "init_local.lua"
if vim.fn.filereadable(local_init) == 1 then
  dofile(local_init)
end
