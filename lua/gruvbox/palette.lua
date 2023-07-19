-- gruvbox palette
local M = {}

M.colors = {
  dark0_hard = "#181616",
  dark0 = "#282828",
  dark0_soft = "#32302f",
  dark1 = "#1B1D1E",
  dark2 = "#fe8019",
  dark3 = "#665c54",
  dark4 = "#a89984",
  dark5 = "#0f0f0f",
  dark6 = "#202328",
  dark7 = "#928374",
  dark8 = "#32302f",
  dark9 = "#181616",
  dark10 = "#3c3836",
  light0_hard = "#fbf1c7",
  light0 = "#fbf1c7",
  light0_soft = "#f2e5bc",
  light1 = "#f8f8f2",
  light2 = "#af3a03",
  light3 = "#bdae93",
  light4 = "#7c6f64",
  light5 = "#f8f8f2",
  light6 = "#f8f8f2",
  light7 = "#7c6f64",
  light8 = "#d5c4a1",
  light9 = "#ebdbb2",
  light10 = "#f2e5bc",
  bright_red = "#fb4934",
  bright_green = "#b8bb26",
  bright_yellow = "#fabd2f",
  bright_blue = "#81A1C1",
  bright_purple = "#d3869b",
  bright_aqua = "#8ec07c",
  bright_orange = "#fe8019",
  bright_choco ="#bdae93",
  neutral_red = "#cc241d",
  neutral_green = "#98971a",
  neutral_yellow = "#d79921",
  neutral_blue = "#458588",
  neutral_purple = "#b16286",
  neutral_aqua = "#689d6a",
  neutral_orange = "#d65d0e",
  faded_red = "#9d0006",
  faded_green = "#79740e",
  faded_yellow = "#b57614",
  faded_blue = "#076678",
  faded_purple = "#8f3f71",
  faded_aqua = "#427b58",
  faded_orange = "#af3a03",
  faded_choco= "#232526",
  gray = "#928374",
}

M.get_base_colors = function(bg, contrast)
  local config = require("gruvbox").config
  local p = M.colors

  for color, hex in pairs(config.palette_overrides) do
    p[color] = hex
  end

  if bg == nil then
    bg = vim.o.background
  end

  local colors = {
    dark = {
      bg0 = p.dark0,
      bg1 = p.dark1,
      bg2 = p.dark2,
      bg3 = p.dark3,
      bg4 = p.dark4,
      bg5 = p.dark5,
      bg6 = p.dark6,
      bg7 = p.dark7,
      bg8 = p.dark8,
      bg9 = p.dark9,
      bg10 = p.dark10,
      fg0 = p.light0,
      fg1 = p.light1,
      fg2 = p.light2,
      fg3 = p.light3,
      fg4 = p.light4,
      fg5 = p.light5,
      fg6 = p.light6,
      fg7 = p.light7,
      fg8 = p.light8,
      fg9 = p.light9,
      fg10 = p.light10,
      red = p.bright_red,
      green = p.bright_green,
      yellow = p.bright_yellow,
      blue = p.bright_blue,
      purple = p.bright_purple,
      aqua = p.bright_aqua,
      orange = p.bright_orange,
      neutral_red = p.neutral_red,
      neutral_green = p.neutral_green,
      neutral_yellow = p.neutral_yellow,
      neutral_blue = p.neutral_blue,
      neutral_purple = p.neutral_purple,
      neutral_aqua = p.neutral_aqua,
      choco = p.faded_choco,
      gray = p.gray,
    },
    light = {
      bg0 = p.light0,
      bg1 = p.light1,
      bg2 = p.light2,
      bg3 = p.light3,
      bg4 = p.light4,
      bg5 = p.light5,
      bg6 = p.light6,
      bg7 = p.light7,
      bg8 = p.light8,
      bg9 = p.light9,
      bg10 = p.light10,
      fg0 = p.dark0,
      fg1 = p.dark1,
      fg2 = p.dark2,
      fg3 = p.dark3,
      fg4 = p.dark4,
      fg5 = p.dark5,
      fg6 = p.dark6,
      fg7 = p.dark7,
      fg8 = p.dark8,
      fg9 = p.dark9,
      fg10 = p.dark10,
      red = p.faded_red,
      green = p.faded_green,
      yellow = p.faded_yellow,
      blue = p.faded_blue,
      purple = p.faded_purple,
      aqua = p.faded_aqua,
      orange = p.faded_orange,
      neutral_red = p.neutral_red,
      neutral_green = p.neutral_green,
      neutral_yellow = p.neutral_yellow,
      neutral_blue = p.neutral_blue,
      neutral_purple = p.neutral_purple,
      neutral_aqua = p.neutral_aqua,
      choco = p.bright_choco,
      gray = p.gray,
    },
  }

  if contrast ~= nil and contrast ~= "" then
    colors[bg].bg0 = p[bg .. string.format("0_%s", contrast)]
  end

  return colors[bg]
end

return M
