-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false

local opt = vim.opt

if vim.fn.has("gui_running") == 1 then
  opt.lines = 50
  opt.columns = 120
  opt.mouse = "a"
  opt.number = true
  opt.relativenumber = true
else
  if vim.fn.exists("$SSH_CONNECTION") == 1 or vim.fn.exists("$SUDO_USER") == 1 then
    opt.mouse = "h" -- In Putty mouse mode is bad - so only for help files
    opt.number = false -- We don't want terminal mouse copy line numbers
    opt.relativenumber = false
    opt.signcolumn = "no" -- Removes the column on the left side (Breakpoints, Gutter)
    vim.o.statuscolumn = "" -- Removes the column on the left side
    -- else
    --   opt.mouse = "a"
    --   opt.number = true
    --   opt.relativenumber = true
  end
end

-- -- Include a local configuration if exists
-- local local_init = vim.fn.stdpath("config") .. "/init_local.lua"
-- if vim.fn.filereadable(local_init) == 1 then
--   dofile(local_init)
-- end
