return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local icons = LazyVim.config.icons
    -- Replace the entire lualine_c section
    opts.sections.lualine_c = {
      LazyVim.lualine.root_dir(),
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      -- { LazyVim.lualine.pretty_path() },

      {
        LazyVim.lualine.pretty_path({

          relative = "cwd", -- Optional: Relativer Pfad (Standard: "cwd")
          modified_sign = "[+]", -- Symbol für ungespeicherte Änderungen
          length = 3, -- Optional: Maximale Länge der Pfade
          modified_hl = "WarningMsg", -- Highlight für modified (Default: MatchParen)
          -- modified_hl = "MatchParen", -- Highlight für modified (Default: MatchParen)
        }),
      },

      -- { "filename", path = 1, symbols = { modified = "[+]", readonly = " [-]" } },
      --
    }
  end,
}
