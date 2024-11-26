local wezterm = require 'wezterm'
local config = {}

-- Add custom-gnome-theme to the list of themes
local custom_theme = require 'custom-gnome-theme'
config.color_schemes = custom_theme.color_schemes

-- config.color_scheme = 'Afterglow'
-- config.color_scheme = 'Afterglow (Gogh)'
-- config.color_scheme = 'Ayu Dark (Gogh)'
-- config.color_scheme = 'Classic Dark (base16)'
-- config.color_scheme = 'Color Star (terminal.sexy)'
-- config.color_scheme = 'darkmoss (base16)'
-- config.color_scheme = 'Darkside (Gogh)'
-- config.color_scheme = 'Dracula'
-- config.color_scheme = 'Default (dark) (terminal.sexy)'
-- config.color_scheme = 'Ef-Deuteranopia-Dark'
-- config.color_scheme = 'Ef-Night'
-- config.color_scheme = 'Gruvbox Dark (Gogh)'
-- config.color_scheme = 'Gruvbox dark, hard (base16)'
-- config.color_scheme = 'Solarized Dark'
config.color_scheme = 'Custom Gnome Theme'


return config
