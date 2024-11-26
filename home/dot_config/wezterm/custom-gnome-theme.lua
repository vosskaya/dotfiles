local wezterm = require 'wezterm'

return {
  color_schemes = {
    ["Custom Gnome Theme"] = {
      foreground = "#d0d0cfcfcccc",
      background = "#080705042b2b",
      cursor_bg = "#d0d0cfcfcccc",
      cursor_border = "#d0d0cfcfcccc",
      cursor_fg = "#080705042b2b",
      selection_bg = "#444444",
      selection_fg = "#ffffff",

      ansi = {
        "#171421", -- Black
        "#c01c28", -- Red
        "#26a269", -- Green
        "#a2734c", -- Yellow
        "#12488b", -- Blue
        "#a347ba", -- Magenta
        "#00aaaa", -- Cyan
        "#d0cfcc", -- White
      },
      brights = {
        "#555555", -- Bright Black
        "#ff5555", -- Bright Red
        "#33d17a", -- Bright Green
        -- "#e9ad0c", -- Bright Yellow
        "#d7af5f", -- Bright Yellow (angepasst)
        "#2a7bde", -- Bright Blue
        "#c061cb", -- Bright Magenta
        "#33c7de", -- Bright Cyan
        "#ffffff", -- Bright White
      },
    },
  },
  color_scheme = "Custom Gnome Theme",
}
