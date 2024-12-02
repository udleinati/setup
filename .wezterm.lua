local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 13

config.keys = {
  -- Split windows na horizontal
  {
    key = 'h',
    mods = 'CTRL|SUPER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Split windows na vertical
  {
    key = 'v',
    mods = 'CTRL|SUPER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Move o foco para o pane acima
  {
    key = "UpArrow",
    mods = "CTRL|SUPER",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },
  -- Move o foco para o pane abaixo
  {
    key = "DownArrow",
    mods = "CTRL|SUPER",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },
  -- Move o foco para o pane à esquerda
  {
    key = "LeftArrow",
    mods = "CTRL|SUPER",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },
  -- Move o foco para o pane à direita
  {
    key = "RightArrow",
    mods = "CTRL|SUPER",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },
  -- Abre nova janela
  { key = 'n', mods = 'CTRL|SUPER', action = wezterm.action.SpawnWindow },
}

return config