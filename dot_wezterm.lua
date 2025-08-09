local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- Font settings
config.font_size = 15
config.line_height = 1.2
config.font = wezterm.font("Dank Mono")

-- Colours
config.color_scheme = "Catppuccin Mocha"

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Miscellaneous
config.max_fps = 120
config.prefer_egl = true

return config
