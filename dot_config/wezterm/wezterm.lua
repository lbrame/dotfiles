-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Appearance --

-- config.color_scheme = 'Catppuccin Mocha'
config.color_scheme = 'Catppuccin Mocha'

-- config.font = wezterm.font 'Fira Code'
config.font = wezterm.font 'Jetbrains Mono'
config.font_size = 14

-- Title bar
config.integrated_title_button_color = '#1e1e2e'
config.integrated_title_button_style = "Gnome"
config.integrated_title_buttons = { 'Close' }

-- Tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- Window frame
config.window_frame = {
    -- Font
    font = wezterm.font { family = 'Cantarell' },
    font_size = 13.0,

    -- Colors
    active_titlebar_bg = '#1e1e2e',
    inactive_titlebar_bg = '#1e1e2e'
}

config.colors = {
    tab_bar = {
        inactive_tab_edge = '#1e1e2e',
    }
}

-- GPU
config.front_end = "WebGpu"

-- and finally, return the configuration to wezterm
return config

