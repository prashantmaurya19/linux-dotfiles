local wezterm = require("wezterm")
local act = wezterm.action

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

-- This will hold the configuration.
local config = wezterm.config_builder()

-- local gpus = wezterm.gui.enumerate_gpus()

-- config.webgpu_preferred_adapter = gpus[1]
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- This is where you actually apply your config choices
config.window_padding = {
  left = 2,
  right = 0,
  top = 0,
  bottom = 0,
}

config.font_size = 12.5
-- For example, changing the color scheme:
config.color_scheme = "Campbell (Gogh)"
-- config.color_scheme = "Catch Me If You Can (terminal.sexy)"
config.font = wezterm.font("FiraCode Nerd Font")
-- config.default_prog = { "pwsh.exe" }
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.adjust_window_size_when_changing_font_size = false

-- config.window_background_image_stretch = "Cover"
config.window_background_opacity = 0.95
-- config.window_background_opacity = 0
-- config.win32_system_backdrop = 'Tabbed'
config.window_background_image_hsb = {
  brightness = 0.03,
  hue = 1,
  saturation = 1.0,
}
config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.2,
}

--colors
config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = "#0b0022",

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = "#ff2042",
      -- The color of the text for the tab
      fg_color = "#c0c0c0",

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = "Normal",

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = "None",

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = "#1b1032",
      fg_color = "#808080",

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = "#3b3052",
      fg_color = "#909090",
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab_hover`.
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = "#1b1032",
      fg_color = "#808080",

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = "#3b3052",
      fg_color = "#909090",
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab_hover`.
    },
  },
}

--keys
-- config.leader = { key = "phys:Space", mods = "ALT", timeout_milliseconds = 1000 }
local mod_key = "WIN"
config.keys = {
  -- { key = "a", mods = "WIN|CTRL", action = act.SendKey({ key = "a", mods = "CTRL" }) },
  { key = "c", mods = mod_key, action = act.ActivateCopyMode },
  { key = "phys:Space", mods = mod_key, action = act.ActivateCommandPalette },
  { key = "x", mods = mod_key, action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "v", mods = mod_key, action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "h", mods = mod_key, action = act.ActivatePaneDirection("Left") },
  { key = "j", mods = mod_key, action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = mod_key, action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = mod_key, action = act.ActivatePaneDirection("Right") },
  { key = "q", mods = mod_key, action = act.CloseCurrentPane({ confirm = true }) },
  -- { key = "f", mods = mod_key, action = act.TogglePaneZoomState },
  -- { key = "o", mods = mod_key, action = act.RotatePanes("Clockwise") },
  { key = "+", mods = mod_key, action = act.IncreaseFontSize },
  { key = "-", mods = mod_key, action = act.DecreaseFontSize },
  { key = "k", mods = "CTRL", action = act.ScrollByLine(-2) },
  { key = "j", mods = "CTRL", action = act.ScrollByLine(2) },
  -- Tab keybindings
  { key = "n", mods = mod_key, action = act.SpawnTab("CurrentPaneDomain") },
  { key = "q", mods = "ALT", action = act.ActivateTabRelative(-1) },
  { key = "w", mods = "ALT", action = act.ActivateTabRelative(1) },
  { key = "t", mods = mod_key, action = act.ShowTabNavigator },
  { key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") },
  {
    key = "e",
    mods = mod_key,
    action = act.PromptInputLine({
      description = wezterm.format({
        { Attribute = { Intensity = "Bold" } },
        { Foreground = { AnsiColor = "Fuchsia" } },
        { Text = "Renaming Tab Title...:" },
      }),
      action = wezterm.action_callback(function(window, _, line)
        if line then
          window:active_tab():set_title(line)
        end
      end),
    }),
  },
  { key = "r", mods = mod_key, action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }) },
  { key = "m", mods = mod_key, action = act.ActivateKeyTable({ name = "move_tab", one_shot = false }) },
  -- { key = "t", mods = mod_key, action = act.ActivateKeyTable({ name = "text_zoom_in_out", one_shot = false }) },
}

for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = mod_key,
    action = act.ActivateTab(i - 1),
  })
end

config.key_tables = {
  resize_pane = {
    { key = "h", action = act.AdjustPaneSize({ "Left", 2 }) },
    { key = "j", action = act.AdjustPaneSize({ "Down", 2 }) },
    { key = "k", action = act.AdjustPaneSize({ "Up", 2 }) },
    { key = "l", action = act.AdjustPaneSize({ "Right", 2 }) },
    { key = "Escape", action = "PopKeyTable" },
    { key = "Enter", action = "PopKeyTable" },
  },
  text_zoom_in_out = {
    { key = "-", action = act.DecreaseFontSize },
    { key = "=", action = act.IncreaseFontSize },
    { key = "Escape", action = "PopKeyTable" },
    { key = "Enter", action = "PopKeyTable" },
  },
  move_tab = {
    { key = "h", action = act.MoveTabRelative(-1) },
    { key = "j", action = act.MoveTabRelative(-1) },
    { key = "k", action = act.MoveTabRelative(1) },
    { key = "l", action = act.MoveTabRelative(1) },
    { key = "Escape", action = "PopKeyTable" },
    { key = "Enter", action = "PopKeyTable" },
  },
}
config.use_fancy_tab_bar = false
config.status_update_interval = 1000
config.tab_bar_at_bottom = false

local function basename(s)
  return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local edge_background = "#0b0022"
  local background = "#1b1032"
  local foreground = "#808080"

  if tab.is_active then
    background = "#2b2042"
    foreground = "#c0c0c0"
  elseif hover then
    background = "#3b3052"
    foreground = "#909090"
  end

  local edge_foreground = background
  local title = tab.tab_title

  title = wezterm.truncate_right(title, max_width - 4)

  return {
    { Background = { Color = edge_foreground } },
    { Foreground = { Color = edge_background } },
    { Text = SOLID_LEFT_ARROW },
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = (tab.tab_index + 1) .. ":" .. title },
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_RIGHT_ARROW },
  }
end)

wezterm.on("update-status", function(window, pane)
  -- Workspace name
  local stat = ""..window:active_workspace()
  local stat_color = "#f7768e"
  if window:active_key_table() then
    stat = window:active_key_table()
    stat_color = "#7dcfff"
  end
  if window:leader_is_active() then
    stat = "LDR"
    stat_color = "#bb9af7"
  end

  local stat_symbol = wezterm.nerdfonts.fa_linux
  if stat=="default" then
    stat_symbol = wezterm.nerdfonts.oct_table
  elseif stat=="resize_pane" then
    stat_symbol = wezterm.nerdfonts.md_resize
  end

  local tab = pane:window():active_tab()
  -- local title = tab:get_title()
  local cmd = pane:get_foreground_process_name()
  cmd = cmd and basename(cmd) or "<!>"
  -- if title and #title > 0 then
  -- 	tab:set_title(title)
  -- else
  -- 	tab:set_title(cmd)
  -- end

  tab:set_title(cmd)
  window:set_right_status(wezterm.format({
    { Text = " | " },
    {Foreground = {Color = stat_color}},
    {Text="Mode: "..stat},
    { Foreground = { Color = "#fff" } },
    {Text=" | "},
    { Foreground = { Color = "#e0af68" } },
    { Text =wezterm.nerdfonts.fa_code .. "  " .. cmd},
  }))

  window:set_left_status(wezterm.format({
    { Foreground = { Color = stat_color } },
    { Text = " " },
    { Text = stat_symbol},
    { Text = " |" },
  }))
  return {
    font_size = 30,
  }
end)
return config
