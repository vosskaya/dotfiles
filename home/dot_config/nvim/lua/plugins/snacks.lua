return {
  {
    "folke/snacks.nvim",
    ---@class snacks.Config
    opts = {
      dashboard = {
        sections = {
          -- { section = "header" },
          { title = "LazyVim", padding = { 1, 0 }, align = "center" },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1, limit = 10 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { pane = 2, title = "", padding = 1 },
          { pane = 2, icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
      indent = {
        -- disable indent if we are in a ssh session or using sudo to
        -- prevent clutter when copying from terminal screen
        enabled = vim.fn.exists("$SSH_CONNECTION") ~= 1 and vim.fn.exists("$SUDO_USER") ~= 1,
      },
    },
  },
}
