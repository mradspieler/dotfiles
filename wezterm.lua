-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox dark, soft (base16)'

config.font = wezterm.font('SauceCodePro Nerd Font')
config.font_size = 18.0
config.initial_rows = 40
config.initial_cols = 150
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
  { key = "/", mods = "SHIFT|ALT", action = wezterm.action({ SendString = "\\" }) },
  { key = "l", mods = "ALT",       action = wezterm.action({ SendString = "@" }) },
  { key = "7", mods = "ALT",       action = wezterm.action({ SendString = "|" }) },
  -- other keyaps ...
}

-- and finally, return the configuration to wezterm
return config
