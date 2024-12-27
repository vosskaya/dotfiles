return {
  "junegunn/fzf",
  -- We only need the fzf binary here
  enabled = vim.fn.executable("fzf") == 0, -- Disable if `fzf` is already available
  build = "./install --bin", -- Build if enabled
}

