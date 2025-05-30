-- Wezterm api
local wezterm = require("wezterm")

local M = {}

function M.apply_to_config(config)
	config:set_strict_mode(true)

	config.initial_cols = 120
	config.initial_rows = 28
	config.font_size = 16
	config.font = wezterm.font 'JetBrains Mono'

	config.color_scheme = "Gruvbox Dark (Gogh)"
end

function M.is_nvim(pane)
	return pane:get_user_vars().IS_NVIM == "true" or pane:get_foreground_process_name():find("n?vim")
end

local config = wezterm.config_builder()
M.apply_to_config(config)
return config
