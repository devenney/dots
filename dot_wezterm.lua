local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- Font settings
config.font = wezterm.font('Dank Mono', { weight = 'Bold' })
config.font_size = 14
config.freetype_load_flags = 'NO_HINTING'
config.line_height = 1.2

-- Colours
config.color_scheme = "Catppuccin Mocha"

-- Appearance
config.window_decorations = "TITLE | RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Keybindings
config.keys = {
  -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
  {
    key="LeftArrow",
    mods="OPT",
    action=wezterm.action{SendString="\x1bb"}
  },
  -- Make Option-Right equivalent to Alt-f; forward-word
  {
    key="RightArrow",
    mods="OPT",
    action=wezterm.action{SendString="\x1bf"}
  },
}

-- Miscellaneous
config.prefer_egl = true
config.max_fps = 120

return config
