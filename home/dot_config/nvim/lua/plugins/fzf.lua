return {
  "junegunn/fzf",
--   -- We only want the fzf binary from this plugin if not installed elsewhere
  enabled = function()
    -- Check for a system-wide `fzf` binary
    local system_fzf = vim.fn.exepath("fzf")

    -- Compute the path to the `fzf` binary provided by this plugin
    local plugin_fzf = vim.fn.stdpath("data") .. "/lazy/fzf/bin/fzf"

    -- Enable the plugin if:
    -- 1. No system-wide `fzf` binary exists
    -- 2. The `fzf` binary in `PATH` is the one provided by this plugin
    return not system_fzf or system_fzf == plugin_fzf
  end,
  build = "./install --bin", -- Build the binary if enabled
}

