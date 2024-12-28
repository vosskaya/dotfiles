return {
  {
    "luisiacc/gruvbox-baby",
    lazy = false,
    config = function()
      vim.g.gruvbox_baby_background_color = "dark" -- medium or dark
      -- vim.g.gruvbox_baby_transparent_mode = "true"
      -- vim.g.gruvbox_baby_use_original_palette = "true"
      -- vim.g.gruvbox-baby_background_color = "dark"

      -- Define custom highlights using colors from morhetz/gruvbox
      vim.g.gruvbox_baby_highlights = {
        CursorLineNr = { fg = "#fabd2f", bg = "#3c3836", style = "bold" },
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "catppuccin-mocha",
      colorscheme = "gruvbox-baby",
      -- colorscheme = "gruvbox",
    },
  },
}
