local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then config = wezterm.config_builder() end

-- color scheme
config.color_scheme = 'Black Metal (Burzum) (base16)'

-- font
config.font = wezterm.font 'JetBrains Mono'

-- backgrond image
config.window_background_image = '/home/andrii/Pictures/wallpapers/ciri-cropped.jpg'
config.window_background_image_hsb = {
  brightness = 0.05,
  hue = 1.0,        -- default
  saturation = 1.0, -- default
}

-- background opacity (default value)
config.window_background_opacity = 1

-- tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- keys
local act = wezterm.action
config.keys = {
  {
    key = 'LeftArrow',
    mods = 'SHIFT|ALT',
    action = act.AdjustPaneSize { 'Left', 2 },
  },
  {
    key = 'DownArrow',
    mods = 'SHIFT|ALT',
    action = act.AdjustPaneSize { 'Down', 2 },
  },
  {
    key = 'UpArrow',
    mods = 'SHIFT|ALT',
    action = act.AdjustPaneSize { 'Up', 2 },
  },
  {
    key = 'RightArrow',
    mods = 'SHIFT|ALT',
    action = act.AdjustPaneSize { 'Right', 2 },
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT|ALT',
    action = act.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT|ALT',
    action = act.SplitHorizontal { domain = "CurrentPaneDomain" },
  },

}

--[[
===== COMMENTED =====

for now i don't use this font in wezterm cause it smaller than current font i use.
changing font size in wezterm affects windows size.
issue is open for this.
-- font
config.font = wezterm.font 'CaskaydiaCove Nerd Font Mono'
config.font_size = 13 

-- kitty graphics protocol
enable_kitty_graphics=true

-- gradient config
config.window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#0f0c29',
    '#302b63',
    '#24243e',
  },
  interpolation = 'Linear',
  blend = 'Rgb',

}

-- gradient preset
config.window_background_gradient = {
preset = 'Viridis',
}
--]]

return config
