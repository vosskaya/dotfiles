return {
  -- add gruvbox
  -- TODO volker
  {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    config = function()
      -- Set Gruvbox contrast options
      vim.g.gruvbox_contrast_dark = "hard"
      vim.g.gruvbox_contrast_light = "medium"

      -- Customize highlighting for the "Error" group
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "gruvbox",
        callback = function()
          vim.cmd([[
                    hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=#FCE8C3 guibg=#fb4934
                    ]])
        end,
      })
    end,
  },
  -- { "ellisonleao/gruvbox.nvim" }, -- has no treesitter support
  {
    "luisiacc/gruvbox-baby",
    lazy = false,
    config = function()
      vim.g.gruvbox_baby_background_color = "dark" -- medium or dark
      -- vim.g.gruvbox_baby_transparent_mode = "true"
      -- vim.g.gruvbox_baby_use_original_palette = "true"

      -- Define custom highlights using colors from morhetz/gruvbox
      vim.g.gruvbox_baby_highlights = {
        CursorLineNr = { fg = "#fabd2f", bg = "#3c3836", style = "bold" },
      }
    end,

    -- opts = {
    --   background_color = "dark",
    -- },
  },

  -- vim.g.gruvbox-baby_background_color = "dark"

  -- Configure LazyVim to load gruvbox
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
