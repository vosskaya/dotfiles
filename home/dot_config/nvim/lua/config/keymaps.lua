-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- buffers
map("n", "gb", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bO", "<cmd>DiffOrig<cr>", { desc = "DiffOrig (diff buffer against saved file)" })

-- simulate some unimpaired bindings
map(
  "n",
  "[<Space>",
  ':<C-u>execute "normal! m`" . v:count1 . "O" | normal! ``<CR>',
  { noremap = true, silent = true, desc = "Empty Line above" }
)
map(
  "n",
  "]<Space>",
  ':<C-u>execute "normal! m`" . v:count1 . "o" | normal! ``<CR>',
  { noremap = true, silent = true, desc = "Empty Line below" }
)

-- Buffer spell lang
map("n", "<leader>bsv", "<cmd>setlocal spell spelllang<cr>", { desc = "view spell lang" })
map("n", "<leader>bsdd", "<cmd>setlocal spell spelllang=de<cr>", { desc = "set spell lang: de" })
map("n", "<leader>bsde", "<cmd>setlocal spell spelllang=de,en<cr>", { desc = "set spell lang: de,en" })
map("n", "<leader>bsee", "<cmd>setlocal spell spelllang=en<cr>", { desc = "set spell lang: en" })
map("n", "<leader>bsed", "<cmd>setlocal spell spelllang=en,de<cr>", { desc = "set spell lang: en,de" })

-- Tools
map("n", "<leader>to", "<cmd>Trailer<cr>", { desc = "Toggle Trailer Show" })
map("n", "<leader>tt", "<cmd>TrailerTrim<cr>", { desc = "Trailer Trim" })

-- Include a local configuration if exists
local local_init = vim.fn.stdpath("config") .. "/lua/config/keymaps_local.lua"
if vim.fn.filereadable(local_init) == 1 then
  dofile(local_init)
end
