local g = vim.g
local highlight = vim.api.nvim_set_hl

local black = "#080808"
local white = "#c6c6c6"
local bg = black
-- Variations of charcoal-grey
local grey0 = "#323437"
local grey1 = "#373c4d"
local grey89 = "#e4e4e4"
local grey70 = "#b2b2b2"
local grey62 = "#9e9e9e"
local grey58 = "#949494"
local grey50 = "#808080"
local grey39 = "#626262"
local grey30 = "#4e4e4e"
local grey27 = "#444444"
local grey23 = "#3a3a3a"
local grey18 = "#2e2e2e"
local grey15 = "#262626"
local grey11 = "#1c1c1c"
local grey7 = "#121212"
-- Core theme colors
local khaki = "#c6c684"
local yellow = "#e3c78a"
local orange = "#de935f"
local coral = "#f09479"
local orchid = "#e196a2"
local lime = "#85dc85"
local green = "#8cc85f"
local emerald = "#36c692"
local turquoise = "#79dac8"
local blue = "#80a0ff"
local sky = "#74b2ff"
local lavender = "#adadf3"
local purple = "#ae81ff"
local violet = "#cf87e8"
local cranberry = "#e65e72"
local crimson = "#ff5189"
local red = "#ff5454"
-- Extra colors
local spring = "#00875f"
local mineral = "#314940"
local bay = "#4d5d8d"

local M = {}

M.palette = {
  black = black,
  white = white,
  bg = bg,
  grey0 = grey0,
  grey1 = grey1,
  grey89 = grey89,
  grey70 = grey70,
  grey62 = grey62,
  grey58 = grey58,
  grey50 = grey50,
  grey39 = grey39,
  grey30 = grey30,
  grey27 = grey27,
  grey23 = grey23,
  grey18 = grey18,
  grey15 = grey15,
  grey11 = grey11,
  grey7 = grey7,
  khaki = khaki,
  yellow = yellow,
  orange = orange,
  coral = coral,
  orchid = orchid,
  lime = lime,
  green = green,
  emerald = emerald,
  turquoise = turquoise,
  blue = blue,
  sky = sky,
  lavender = lavender,
  purple = purple,
  violet = violet,
  cranberry = cranberry,
  crimson = crimson,
  red = red,
  spring = spring,
  mineral = mineral,
  bay = bay,
}


return M
