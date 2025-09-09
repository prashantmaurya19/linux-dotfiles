local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"
local M = {}

M.style = function()
  if vim.g.alphaMoonflyPallet == nil then
    M.setup()
  end
  -------------------------------------------------------------------------
  -- Custom styling groups
  -------------------------------------------------------------------------

  highlight(0, "MoonflyVisual", { bg = vim.g.alphaMoonflyPallet.grey0 })
  highlight(0, "MoonflyWhite", { fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "MoonflyGrey0", { fg = vim.g.alphaMoonflyPallet.grey0 })
  highlight(0, "MoonflyGrey89", { fg = vim.g.alphaMoonflyPallet.grey89 })
  highlight(0, "MoonflyGrey70", { fg = vim.g.alphaMoonflyPallet.grey70 })
  highlight(0, "MoonflyGrey62", { fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "MoonflyGrey58", { fg = vim.g.alphaMoonflyPallet.grey58 })
  highlight(0, "MoonflyGrey39", { fg = vim.g.alphaMoonflyPallet.grey39 })
  highlight(0, "MoonflyGrey30", { fg = vim.g.alphaMoonflyPallet.grey30 })
  highlight(0, "MoonflyGrey27", { fg = vim.g.alphaMoonflyPallet.grey27 })
  highlight(0, "MoonflyGrey23", { fg = vim.g.alphaMoonflyPallet.grey23 })
  highlight(0, "MoonflyGrey18", { fg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "MoonflyGrey15", { fg = vim.g.alphaMoonflyPallet.grey15 })
  highlight(0, "MoonflyKhaki", { fg = vim.g.alphaMoonflyPallet.khaki })
  highlight(0, "MoonflyYellow", { fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "MoonflyOrange", { fg = vim.g.alphaMoonflyPallet.orange })
  highlight(0, "MoonflyCoral", { fg = vim.g.alphaMoonflyPallet.coral })
  highlight(0, "MoonflyOrchid", { fg = vim.g.alphaMoonflyPallet.orchid })
  highlight(0, "MoonflyLime", { fg = vim.g.alphaMoonflyPallet.lime })
  highlight(0, "MoonflyGreen", { fg = vim.g.alphaMoonflyPallet.green })
  highlight(0, "MoonflyEmerald", { fg = vim.g.alphaMoonflyPallet.emerald })
  highlight(0, "MoonflyTurquoise", { fg = vim.g.alphaMoonflyPallet.turquoise })
  highlight(0, "MoonflyBlue", { fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "MoonflySky", { fg = vim.g.alphaMoonflyPallet.sky })
  highlight(0, "MoonflyLavender", { fg = vim.g.alphaMoonflyPallet.lavender })
  highlight(0, "MoonflyPurple", { fg = vim.g.alphaMoonflyPallet.purple })
  highlight(0, "MoonflyViolet", { fg = vim.g.alphaMoonflyPallet.violet })
  highlight(0, "MoonflyCranberry", { fg = vim.g.alphaMoonflyPallet.cranberry })
  highlight(0, "MoonflyCrimson", { fg = vim.g.alphaMoonflyPallet.crimson })
  highlight(0, "MoonflyRed", { fg = vim.g.alphaMoonflyPallet.red })
  -- Misc helpers
  highlight(0, "MoonflyUnderline", { underline = true })
  highlight(0, "MoonflyNoCombine", { nocombine = true })
  -- Statusline helper colors
  highlight(0, "MoonflyBlueMode", { bg = vim.g.alphaMoonflyPallet.blue, fg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "MoonflyEmeraldMode", { bg = vim.g.alphaMoonflyPallet.emerald, fg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "MoonflyPurpleMode", { bg = vim.g.alphaMoonflyPallet.purple, fg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "MoonflyCrimsonMode", { bg = vim.g.alphaMoonflyPallet.crimson, fg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "MoonflyYellowMode", { bg = vim.g.alphaMoonflyPallet.yellow, fg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(
    0,
    "MoonflyTurquoiseMode",
    { bg = vim.g.alphaMoonflyPallet.turquoise, fg = vim.g.alphaMoonflyPallet.grey11 }
  )
  -- Generic line helper colors
  highlight(0, "MoonflyCrimsonLine", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.crimson })
  highlight(0, "MoonflyEmeraldLine", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.emerald })
  highlight(0, "MoonflyGrey58Line", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.grey58 })
  highlight(0, "MoonflyYellowLine", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "MoonflyBlueLineActive", { bg = vim.g.alphaMoonflyPallet.grey27, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "MoonflyRedLineActive", { bg = vim.g.alphaMoonflyPallet.grey27, fg = vim.g.alphaMoonflyPallet.red })
  highlight(
    0,
    "MoonflyTurquoiseLineActive",
    { bg = vim.g.alphaMoonflyPallet.grey27, fg = vim.g.alphaMoonflyPallet.turquoise }
  )
  highlight(0, "MoonflyWhiteLineActive", { bg = vim.g.alphaMoonflyPallet.grey27, fg = vim.g.alphaMoonflyPallet.grey89 })
  highlight(
    0,
    "MoonflyYellowLineActive",
    { bg = vim.g.alphaMoonflyPallet.grey27, fg = vim.g.alphaMoonflyPallet.yellow }
  )

  -------------------------------------------------------------------------
  -- Standard styling
  -------------------------------------------------------------------------

  -- Specify the colors used by the inbuilt terminal
  if g.moonflyTerminalColors then
    g.terminal_color_0 = vim.g.alphaMoonflyPallet.grey0
    g.terminal_color_1 = vim.g.alphaMoonflyPallet.red
    g.terminal_color_2 = vim.g.alphaMoonflyPallet.green
    g.terminal_color_3 = vim.g.alphaMoonflyPallet.yellow
    g.terminal_color_4 = vim.g.alphaMoonflyPallet.blue
    g.terminal_color_5 = vim.g.alphaMoonflyPallet.violet
    g.terminal_color_6 = vim.g.alphaMoonflyPallet.turquoise
    g.terminal_color_7 = vim.g.alphaMoonflyPallet.white
    g.terminal_color_8 = vim.g.alphaMoonflyPallet.grey58
    g.terminal_color_9 = vim.g.alphaMoonflyPallet.crimson
    g.terminal_color_10 = vim.g.alphaMoonflyPallet.emerald
    g.terminal_color_11 = vim.g.alphaMoonflyPallet.khaki
    g.terminal_color_12 = vim.g.alphaMoonflyPallet.sky
    g.terminal_color_13 = vim.g.alphaMoonflyPallet.purple
    g.terminal_color_14 = vim.g.alphaMoonflyPallet.lime
    g.terminal_color_15 = vim.g.alphaMoonflyPallet.grey89
  end

  -- Background and text
  highlight(0, "Normal", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.white })

  -- Color of mode text, -- INSERT --
  highlight(0, "ModeMsg", { fg = vim.g.alphaMoonflyPallet.grey62 })

  -- Comments
  if g.moonflyItalics then
    highlight(0, "Comment", { fg = vim.g.alphaMoonflyPallet.grey58, italic = true })
  else
    highlight(0, "Comment", { link = "MoonflyGrey58" })
  end

  -- Functions
  highlight(0, "Function", { link = "MoonflySky" })

  -- Strings
  highlight(0, "String", { link = "MoonflyKhaki" })

  -- Booleans
  highlight(0, "Boolean", { link = "MoonflyCranberry" })

  -- Identifiers
  highlight(0, "Identifier", { link = "MoonflyTurquoise" })

  -- Color of titles
  highlight(0, "Title", { fg = vim.g.alphaMoonflyPallet.orange })

  -- const, static
  highlight(0, "StorageClass", { link = "MoonflyViolet" })

  -- void, intptr_t
  highlight(0, "Type", { fg = vim.g.alphaMoonflyPallet.emerald })

  -- Numbers
  highlight(0, "Constant", { link = "MoonflyOrange" })

  -- Character constants
  highlight(0, "Character", { link = "MoonflyPurple" })

  -- Exceptions
  highlight(0, "Exception", { link = "MoonflyCrimson" })

  -- ifdef/endif
  highlight(0, "PreProc", { link = "MoonflyCranberry" })

  -- case in switch statement
  highlight(0, "Label", { link = "MoonflyTurquoise" })

  -- end-of-line '$', end-of-file '~'
  highlight(0, "NonText", { fg = vim.g.alphaMoonflyPallet.grey39 })

  -- sizeof
  highlight(0, "Operator", { link = "MoonflyCranberry" })

  -- for, while
  highlight(0, "Repeat", { link = "MoonflyViolet" })

  -- Search
  highlight(0, "Search", { bg = vim.g.alphaMoonflyPallet.grey1, fg = vim.g.alphaMoonflyPallet.grey89 })
  highlight(0, "CurSearch", { bg = vim.g.alphaMoonflyPallet.coral, fg = vim.g.alphaMoonflyPallet.black })
  highlight(0, "IncSearch", { bg = vim.g.alphaMoonflyPallet.yellow, fg = vim.g.alphaMoonflyPallet.black })

  -- '\n' sequences
  highlight(0, "Special", { link = "MoonflyCranberry" })

  -- if, else
  highlight(0, "Statement", { fg = vim.g.alphaMoonflyPallet.violet })

  -- struct, union, enum, typedef
  highlight(0, "Structure", { link = "MoonflyBlue" })

  -- Status, split and tab lines
  highlight(0, "StatusLine", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "StatusLineNC", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "Tabline", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "TablineSel", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "TablineSelSymbol", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.emerald })
  highlight(0, "TablineFill", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "StatusLineTerm", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "StatusLineTermNC", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey62 })
  if g.moonflyWinSeparator == 0 then
    highlight(0, "VertSplit", { bg = vim.g.alphaMoonflyPallet.black, fg = vim.g.alphaMoonflyPallet.black })
  elseif g.moonflyWinSeparator == 1 then
    highlight(0, "VertSplit", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey18 })
  else
    highlight(0, "VertSplit", { bg = none, fg = vim.g.alphaMoonflyPallet.grey18 })
  end

  -- Visual selection
  highlight(0, "Visual", { link = "MoonflyVisual" })
  highlight(0, "VisualNOS", { bg = vim.g.alphaMoonflyPallet.grey0, fg = vim.g.alphaMoonflyPallet.white })

  -- Errors, warnings and vim.g.alphaMoonflyPallet.whitespace-eol
  highlight(0, "Error", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.red })
  highlight(0, "ErrorMsg", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.red })
  highlight(0, "WarningMsg", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.orange })

  -- Auto-text-completion menu
  highlight(0, "Pmenu", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "PmenuSel", { bg = vim.g.alphaMoonflyPallet.spring, fg = vim.g.alphaMoonflyPallet.grey89 })
  highlight(0, "PmenuSbar", { bg = vim.g.alphaMoonflyPallet.grey15 })
  highlight(0, "PmenuThumb", { bg = vim.g.alphaMoonflyPallet.grey50 })
  highlight(0, "WildMenu", { bg = vim.g.alphaMoonflyPallet.spring, fg = vim.g.alphaMoonflyPallet.grey89 })

  -- Spelling errors
  if g.moonflyUndercurls then
    highlight(0, "SpellBad", { bg = none, undercurl = true, sp = vim.g.alphaMoonflyPallet.red })
    highlight(0, "SpellCap", { bg = none, undercurl = true, sp = vim.g.alphaMoonflyPallet.blue })
    highlight(0, "SpellRare", { bg = none, undercurl = true, sp = vim.g.alphaMoonflyPallet.yellow })
    highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = vim.g.alphaMoonflyPallet.sky })
  else
    highlight(
      0,
      "SpellBad",
      { bg = none, fg = vim.g.alphaMoonflyPallet.red, underline = true, sp = vim.g.alphaMoonflyPallet.red }
    )
    highlight(
      0,
      "SpellCap",
      { bg = none, fg = vim.g.alphaMoonflyPallet.blue, underline = true, sp = vim.g.alphaMoonflyPallet.blue }
    )
    highlight(
      0,
      "SpellRare",
      { bg = none, fg = vim.g.alphaMoonflyPallet.yellow, underline = true, sp = vim.g.alphaMoonflyPallet.yellow }
    )
    highlight(
      0,
      "SpellLocal",
      { bg = none, fg = vim.g.alphaMoonflyPallet.sky, underline = true, sp = vim.g.alphaMoonflyPallet.sky }
    )
  end

  -- Misc
  highlight(0, "Question", { fg = vim.g.alphaMoonflyPallet.lime })
  highlight(0, "MoreMsg", { fg = vim.g.alphaMoonflyPallet.red })
  highlight(0, "LineNr", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.grey39 })
  if g.moonflyCursorColor then
    highlight(0, "Cursor", { fg = vim.g.alphaMoonflyPallet.bg, bg = vim.g.alphaMoonflyPallet.blue })
  else
    highlight(0, "Cursor", { fg = vim.g.alphaMoonflyPallet.bg, bg = vim.g.alphaMoonflyPallet.grey62 })
  end
  highlight(0, "lCursor", { fg = vim.g.alphaMoonflyPallet.bg, bg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "CursorLineNr", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "CursorColumn", { bg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "CursorLine", { bg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "Folded", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.lime })
  highlight(0, "FoldColumn", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.lime })
  highlight(0, "SignColumn", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.lime })
  highlight(0, "Todo", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "SpecialKey", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.sky })
  if g.moonflyUnderlineMatchParen then
    highlight(0, "MatchParen", { bg = vim.g.alphaMoonflyPallet.bg, underline = true })
  else
    highlight(0, "MatchParen", { link = "MoonflyVisual" })
  end
  highlight(0, "Ignore", { link = "MoonflySky" })
  highlight(0, "Underlined", { fg = vim.g.alphaMoonflyPallet.emerald })
  highlight(0, "QuickFixLine", { bg = vim.g.alphaMoonflyPallet.grey23 })
  highlight(0, "Delimiter", { link = "MoonflyWhite" })
  highlight(0, "qfFileName", { link = "MoonflyEmerald" })

  -- Color column (after line 80)
  highlight(0, "ColorColumn", { bg = vim.g.alphaMoonflyPallet.grey7 })

  -- Conceal color
  highlight(0, "Conceal", { bg = none, fg = vim.g.alphaMoonflyPallet.grey70 })

  -- nvim -d
  highlight(0, "DiffAdd", { bg = vim.g.alphaMoonflyPallet.mineral })
  highlight(0, "DiffChange", { bg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "DiffDelete", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey39 })
  highlight(0, "DiffText", { bg = vim.g.alphaMoonflyPallet.bay })

  -------------------------------------------------------------------------
  -- Neovim standard styling
  -------------------------------------------------------------------------

  highlight(0, "Whitespace", { fg = vim.g.alphaMoonflyPallet.grey0 })
  highlight(0, "TermCursor", { bg = vim.g.alphaMoonflyPallet.grey62, fg = vim.g.alphaMoonflyPallet.black })
  if g.moonflyNormalFloat then
    highlight(0, "NormalFloat", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.grey70 })
  else
    highlight(0, "NormalFloat", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.white })
  end
  highlight(0, "FloatBorder", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "WinBar", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "WinBarNC", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim check-health
  highlight(0, "healthSuccess", { link = "DiffAdd" })
  highlight(0, "healthHeadingChar", { link = "MoonflyBlue" })
  highlight(0, "helpHeader", { link = "MoonflyTurquoise" })

  -- Neovim Tree-sitter
  highlight(0, "@attribute", { link = "MoonflySky" })
  highlight(0, "@comment.error", { link = "MoonflyRed" })
  highlight(0, "@comment.note", { fg = vim.g.alphaMoonflyPallet.sky })
  highlight(0, "@comment.ok", { fg = vim.g.alphaMoonflyPallet.spring })
  highlight(0, "@comment.todo", { link = "Todo" })
  highlight(0, "@comment.warning", { link = "MoonflyYellow" })
  highlight(0, "@constant", { link = "MoonflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "MoonflyGreen" })
  highlight(0, "@constant.macro", { link = "MoonflyViolet" })
  highlight(0, "@constructor", { link = "MoonflyEmerald" })
  highlight(0, "@diff.delta", { link = "DiffChange" })
  highlight(0, "@diff.minus", { link = "DiffDelete" })
  highlight(0, "@diff.plus", { link = "DiffAdd" })
  highlight(0, "@function.builtin", { link = "Function" })
  highlight(0, "@function.call", { link = "Function" })
  highlight(0, "@function.macro", { link = "MoonflyTurquoise" })
  highlight(0, "@function.method", { link = "Function" })
  highlight(0, "@function.method.call", { link = "Function" })
  highlight(0, "@keyword.conditional", { link = "Conditional" })
  highlight(0, "@keyword.directive", { link = "PreProc" })
  highlight(0, "@keyword.directive.define", { link = "Define" })
  highlight(0, "@keyword.exception", { link = "MoonflyViolet" })
  highlight(0, "@keyword.import", { link = "Include" })
  highlight(0, "@keyword.operator", { link = "MoonflyViolet" })
  highlight(0, "@keyword.repeat", { link = "Repeat" })
  highlight(0, "@keyword.storage", { link = "StorageClass" })
  highlight(0, "@markup.environment", { link = "MoonflyCranberry" })
  highlight(0, "@markup.environment.name", { link = "MoonflyEmerald" })
  highlight(0, "@markup.heading", { link = "MoonflyViolet" })
  highlight(0, "@markup.italic", { fg = vim.g.alphaMoonflyPallet.orchid, italic = true })
  highlight(0, "@markup.link", { link = "MoonflyGreen" })
  highlight(0, "@markup.link.url", { link = "MoonflyPurple" })
  highlight(0, "@markup.list", { link = "MoonflyCranberry" })
  highlight(0, "@markup.list.checked", { link = "MoonflyTurquoise" })
  highlight(0, "@markup.list.unchecked", { link = "MoonflyBlue" })
  highlight(0, "@markup.math", { link = "MoonflyCranberry" })
  highlight(0, "@markup.quote", { link = "MoonflyGrey58" })
  highlight(0, "@markup.raw", { link = "String" })
  highlight(0, "@markup.raw.block", { link = "MoonflyViolet" })
  highlight(0, "@markup.strikethrough", { strikethrough = true })
  highlight(0, "@markup.strong", { link = "MoonflyOrchid" })
  highlight(0, "@markup.underline", { underline = true })
  highlight(0, "@module", { link = "MoonflyTurquoise" })
  highlight(0, "@module.builtin", { link = "MoonflyGreen" })
  highlight(0, "@none", {})
  highlight(0, "@parameter.builtin", { link = "MoonflyOrchid" })
  highlight(0, "@property", { link = "MoonflyLavender" })
  highlight(0, "@string.regexp", { link = "MoonflyTurquoise" })
  highlight(0, "@string.special.symbol", { link = "MoonflyPurple" })
  highlight(0, "@string.special.url", { link = "MoonflyPurple" })
  highlight(0, "@tag", { link = "MoonflyBlue" })
  highlight(0, "@tag.attribute", { link = "MoonflyTurquoise" })
  highlight(0, "@tag.delimiter", { link = "MoonflyGreen" })
  highlight(0, "@type.builtin", { link = "MoonflyEmerald" })
  highlight(0, "@type.qualifier", { link = "MoonflyViolet" })
  highlight(0, "@variable", { link = "MoonflyWhite" })
  highlight(0, "@variable.builtin", { link = "MoonflyGreen" })
  highlight(0, "@variable.member", { link = "MoonflyLavender" })
  highlight(0, "@variable.parameter", { link = "MoonflyOrchid" })

  -- Neovim LEGACY Tree-sitter (Neovim 0.8, 0.9)
  highlight(0, "@conditional", { link = "@keyword.conditional" })
  highlight(0, "@define", { link = "@keyword.directive.define" })
  highlight(0, "@error", { link = "MoonflyRed" })
  highlight(0, "@exception", { link = "@keyword.exception" })
  highlight(0, "@field", { link = "@variable.member" })
  highlight(0, "@include", { link = "@keyword.import" })
  highlight(0, "@method", { link = "@function.method" })
  highlight(0, "@namespace", { link = "@module" })
  highlight(0, "@namespace.builtin", { link = "@module.builtin" })
  highlight(0, "@parameter", { link = "@variable.parameter" })
  highlight(0, "@preproc", { link = "@keyword.directive" })
  highlight(0, "@punctuation.special", { link = "@markup.list" })
  highlight(0, "@repeat", { link = "@keyword.repeat" })
  highlight(0, "@string.regex", { link = "@string.regexp" })
  highlight(0, "@storageclass", { link = "@keyword.storage" })
  highlight(0, "@symbol", { link = "@string.special.symbol" })
  highlight(0, "@text.danger", { link = "@comment.error" })
  highlight(0, "@text.diff.add", { link = "@diff.plus" })
  highlight(0, "@text.diff.change", { link = "@diff.delta" })
  highlight(0, "@text.diff.delete", { link = "@diff.minus" })
  highlight(0, "@text.emphasis", { link = "@markup.italic" })
  highlight(0, "@text.environment", { link = "@markup.environment" })
  highlight(0, "@text.environment.name", { link = "@markup.environment.name" })
  highlight(0, "@text.literal", { link = "@markup.raw" })
  highlight(0, "@text.math", { link = "@markup.math" })
  highlight(0, "@text.note", { link = "@comment.note" })
  highlight(0, "@text.ok", { link = "@comment.ok" })
  highlight(0, "@text.reference", { link = "@markup.link" })
  highlight(0, "@text.strike", { link = "@markup.strikethrough" })
  highlight(0, "@text.strong", { link = "@markup.strong" })
  highlight(0, "@text.title", { link = "@markup.heading" })
  highlight(0, "@text.todo", { link = "@comment.todo" })
  highlight(0, "@text.underline", { link = "@markup.underline" })
  highlight(0, "@text.uri", { link = "@markup.link.url" })
  highlight(0, "@text.warning", { link = "@comment.warning" })

  -- Language specific Tree-sitter overrides.
  highlight(0, "@function.macro.vim", { link = "MoonflySky" })
  highlight(0, "@keyword.gitcommit", { link = "MoonflySky" })
  highlight(0, "@keyword.storage.rust", { link = "MoonflyViolet" })
  highlight(0, "@markup.heading.1.markdown", { link = "MoonflyEmerald" })
  highlight(0, "@markup.heading.1.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@markup.heading.1.vimdoc", { link = "MoonflyBlue" })
  highlight(0, "@markup.heading.2.markdown", { link = "MoonflyBlue" })
  highlight(0, "@markup.heading.2.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@markup.heading.2.vimdoc", { link = "MoonflyBlue" })
  highlight(0, "@markup.heading.3.markdown", { link = "MoonflyTurquoise" })
  highlight(0, "@markup.heading.3.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@markup.heading.4.markdown", { link = "MoonflyOrange" })
  highlight(0, "@markup.heading.4.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@markup.heading.5.markdown", { link = "MoonflyMalibu" })
  highlight(0, "@markup.heading.5.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@markup.heading.6.markdown", { link = "MoonflyViolet" })
  highlight(0, "@markup.heading.6.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@markup.heading.help", { link = "MoonflySky" })
  highlight(0, "@markup.heading.markdown", { link = "MoonflySky" })
  highlight(0, "@markup.link.gitcommit", { link = "MoonflyBlue" })
  highlight(0, "@markup.link.url.gitcommit", { link = "MoonflyEmerald" })
  if g.moonflyItalics then
    highlight(0, "@markup.link.url.astro", { fg = vim.g.alphaMoonflyPallet.violet, italic = true })
    highlight(0, "@markup.link.url.html", { fg = vim.g.alphaMoonflyPallet.violet, italic = true })
    highlight(0, "@markup.link.url.svelte", { fg = vim.g.alphaMoonflyPallet.violet, italic = true })
    highlight(0, "@markup.link.url.vue", { fg = vim.g.alphaMoonflyPallet.violet, italic = true })
  else
    highlight(0, "@markup.link.url.astro", { link = "MoonflyViolet" })
    highlight(0, "@markup.link.url.html", { link = "MoonflyViolet" })
    highlight(0, "@markup.link.url.svelte", { link = "MoonflyViolet" })
    highlight(0, "@markup.link.url.vue", { link = "MoonflyViolet" })
  end
  highlight(0, "@markup.raw.block.vimdoc", { link = "MoonflyGreen" })
  highlight(0, "@markup.raw.vimdoc", { link = "MoonflyOrchid" })
  highlight(0, "@punctuation.delimiter.astro", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.css", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.rust", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.scss", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "MoonflyCranberry" })
  highlight(0, "@type.toml", { link = "MoonflyBlue" })
  highlight(0, "@variable.builtin.vim", { link = "MoonflyEmerald" })
  highlight(0, "@variable.member.yaml", { link = "MoonflyBlue" })
  highlight(0, "@variable.parameter.bash", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.scss", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.vim", { link = "MoonflyTurquoise" })

  -- Language specific LEGACY Tree-sitter overrides (Neovim 0.8, 0.9).
  highlight(0, "@field.yaml", { link = "@variable.member.yaml" })
  highlight(0, "@parameter.bash", { link = "@variable.parameter.bash" })
  highlight(0, "@storageclass.rust", { link = "@keyword.storage.rust" })
  highlight(0, "@text.literal.block.vimdoc", { link = "@markup.raw.block.vimdoc" })
  highlight(0, "@text.literal.vimdoc", { link = "@markup.raw.vimdoc" })
  highlight(0, "@text.reference.gitcommit", { link = "markup.link.gitcommit" })
  highlight(0, "@text.title.1.markdown", { link = "@markup.heading.1.markdown" })
  highlight(0, "@text.title.1.marker.markdown", { link = "@markup.heading.1.marker.markdown" })
  highlight(0, "@text.title.1.vimdoc", { link = "@markup.heading.1.vimdoc" })
  highlight(0, "@text.title.2.markdown", { link = "@markup.heading.2.markdown" })
  highlight(0, "@text.title.2.marker.markdown", { link = "@markup.heading.2.marker.markdown" })
  highlight(0, "@text.title.2.vimdoc", { link = "@markup.heading.2.vimdoc" })
  highlight(0, "@text.title.3.markdown", { link = "@markup.heading.3.markdown" })
  highlight(0, "@text.title.3.marker.markdown", { link = "@markup.heading.3.marker.markdown" })
  highlight(0, "@text.title.4.markdown", { link = "@markup.heading.4.markdown" })
  highlight(0, "@text.title.4.marker.markdown", { link = "@markup.heading.4.marker.markdown" })
  highlight(0, "@text.title.5.markdown", { link = "@markup.heading.5.markdown" })
  highlight(0, "@text.title.5.marker.markdown", { link = "@markup.heading.5.marker.markdown" })
  highlight(0, "@text.title.6.markdown", { link = "@markup.heading.6.markdown" })
  highlight(0, "@text.title.6.marker.markdown", { link = "@markup.heading.6.marker.markdown" })
  highlight(0, "@text.title.help", { link = "@markup.heading.help" })
  highlight(0, "@text.title.markdown", { link = "@markup.heading.markdown" })
  highlight(0, "@text.uri.astro", { link = "@markup.link.url.astro" })
  highlight(0, "@text.uri.gitcommit", { link = "@markup.link.url.gitcommit" })
  highlight(0, "@text.uri.html", { link = "@markup.link.url.html" })
  highlight(0, "@text.uri.svelte", { link = "@markup.link.url.svelte" })
  highlight(0, "@text.uri.vue", { link = "@markup.link.url.vue" })

  -- Neovim LSP semantic highlights.
  highlight(0, "@lsp.mod.deprecated", { link = "@constant" })
  highlight(0, "@lsp.mod.readonly", { link = "@constant" })
  highlight(0, "@lsp.mod.typeHint", { link = "@type" })
  highlight(0, "@lsp.type.boolean", { link = "@boolean" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.builtinType", { link = "@type" })
  highlight(0, "@lsp.type.class", { link = "@type" })
  highlight(0, "@lsp.type.enum", { link = "@type" })
  highlight(0, "@lsp.type.enumMember", { link = "@property" })
  highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  highlight(0, "@lsp.type.generic", { link = "@variable" })
  highlight(0, "@lsp.type.interface", { link = "@type" })
  highlight(0, "@lsp.type.keyword", { link = "@keyword" })
  highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
  highlight(0, "@lsp.type.magicFunction", { link = "@function" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.number", { link = "@number" })
  highlight(0, "@lsp.type.operator", { link = "@operator" })
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.property", { link = "@property" })
  highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.string", { link = "@string" })
  highlight(0, "@lsp.type.struct", { link = "@type" })
  highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  highlight(0, "@lsp.type.unresolvedReference", { link = "@error" })
  highlight(0, "@lsp.type.variable", { link = "@variable" })
  highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword" })
  highlight(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
  highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
  highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
  highlight(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.variable.callable", { link = "@function" })
  highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  highlight(0, "@lsp.typemod.variable.global", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  highlight(0, "@lsp.typemod.variable.readonly", { link = "@variable" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })
  -- Language specific LSP semantic overrides.
  highlight(0, "@lsp.type.macro.rust", { link = "@function.macro" })
  highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
  highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticHint", { link = "MoonflyTurquoise" })
  highlight(0, "DiagnosticOk", { link = "MoonflyEmerald" })
  if g.moonflyUndercurls then
    highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = vim.g.alphaMoonflyPallet.red })
    highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = vim.g.alphaMoonflyPallet.yellow })
    highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = vim.g.alphaMoonflyPallet.sky })
    highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = vim.g.alphaMoonflyPallet.turquoise })
    highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = vim.g.alphaMoonflyPallet.emerald })
  else
    highlight(0, "DiagnosticUnderlineError", { underline = true, sp = vim.g.alphaMoonflyPallet.red })
    highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = vim.g.alphaMoonflyPallet.yellow })
    highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = vim.g.alphaMoonflyPallet.sky })
    highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = vim.g.alphaMoonflyPallet.turquoise })
    highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = vim.g.alphaMoonflyPallet.emerald })
  end
  if g.moonflyVirtualTextColor then
    highlight(
      0,
      "DiagnosticVirtualTextError",
      { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.red }
    )
    highlight(
      0,
      "DiagnosticVirtualTextWarn",
      { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.yellow }
    )
    highlight(
      0,
      "DiagnosticVirtualTextInfo",
      { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.sky }
    )
    highlight(
      0,
      "DiagnosticVirtualTextHint",
      { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.turquoise }
    )
    highlight(
      0,
      "DiagnosticVirtualTextOk",
      { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.emerald }
    )
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextOk", { link = "MoonflyGrey39" })
  end
  highlight(0, "DiagnosticSignError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticSignWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticSignInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticSignHint", { link = "MoonflyTurquoise" })
  highlight(0, "DiagnosticSignOk", { link = "MoonflyEmerald" })
  highlight(0, "DiagnosticFloatingError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticFloatingHint", { link = "MoonflyTurquoise" })
  highlight(0, "DiagnosticFloatingOk", { link = "MoonflyEmerald" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "MoonflyGrey39" })
  highlight(0, "LspCodeLensSeparator", { link = "MoonflyGrey39" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspInlayHint", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.grey58 })
  highlight(0, "LspReferenceText", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceRead", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceWrite", { link = "MoonflyVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = vim.g.alphaMoonflyPallet.grey18 })

  -------------------------------------------------------------------------
  -- Legacy language styling
  -------------------------------------------------------------------------

  -- Help
  highlight(0, "helpCommand", { link = "MoonflyOrchid" })
  highlight(0, "helpExample", { link = "MoonflyGreen" })
  highlight(0, "helpHeadline", { link = "MoonflyBlue" })
  highlight(0, "helpHyperTextEntry", { link = "MoonflyTurquoise" })
  highlight(0, "helpSectionDelim", { link = "MoonflyBlue" })

  -- Markdown, 'tpope/vim-markdown' plugin
  highlight(0, "markdownBold", { link = "MoonflyYellow" })
  highlight(0, "markdownCode", { link = "MoonflyKhaki" })
  highlight(0, "markdownCodeDelimiter", { link = "MoonflyKhaki" })
  highlight(0, "markdownError", { link = "NormalNC" })
  highlight(0, "markdownH1", { link = "MoonflyEmerald" })
  highlight(0, "markdownH2", { link = "MoonflyBlue" })
  highlight(0, "markdownH3", { link = "MoonflyTurquoise" })
  highlight(0, "markdownHeadingRule", { link = "MoonflyCranberry" })
  highlight(0, "markdownItalic", { link = "MoonflyOrchid" })
  highlight(0, "markdownUrl", { link = "MoonflyPurple" })

  -- Markdown, 'plasticboy/vim-markdown' plugin
  highlight(0, "mkdDelimiter", { link = "MoonflyWhite" })
  highlight(0, "mkdLineBreak", { link = "NormalNC" })
  highlight(0, "mkdListItem", { link = "MoonflyBlue" })
  highlight(0, "mkdURL", { link = "MoonflyPurple" })

  -- Shell
  highlight(0, "shAlias", { link = "MoonflyTurquoise" })
  highlight(0, "shCommandSub", { link = "MoonflyWhite" })
  highlight(0, "shCtrlSeq", { link = "MoonflyKhaki" })
  highlight(0, "shLoop", { link = "MoonflyViolet" })
  highlight(0, "shRange", { link = "MoonflyWhite" })
  highlight(0, "shSetList", { link = "MoonflyTurquoise" })
  highlight(0, "shShellVariables", { link = "MoonflyTurquoise" })
  highlight(0, "shVariable", { link = "MoonflyTurquoise" })

  -- XML
  highlight(0, "xmlAttrib", { link = "MoonflyLime" })
  highlight(0, "xmlEndTag", { link = "MoonflyBlue" })
  highlight(0, "xmlTag", { link = "MoonflyLime" })
  highlight(0, "xmlTagName", { link = "MoonflyBlue" })

  -------------------------------------------------------------------------
  -- Legacy plugin styling
  -------------------------------------------------------------------------

  -- Git commits
  highlight(0, "gitCommitBranch", { link = "MoonflySky" })
  highlight(0, "gitCommitDiscardedFile", { link = "MoonflyCrimson" })
  highlight(0, "gitCommitDiscardedType", { link = "MoonflySky" })
  highlight(0, "gitCommitHeader", { link = "MoonflyPurple" })
  highlight(0, "gitCommitSelectedFile", { link = "MoonflyEmerald" })
  highlight(0, "gitCommitSelectedType", { link = "MoonflySky" })
  highlight(0, "gitCommitUntrackedFile", { link = "MoonflyCranberry" })
  highlight(0, "gitEmail", { link = "MoonflyBlue" })

  -- Git commit diffs
  highlight(0, "diffAdded", { link = "MoonflyGreen" })
  highlight(0, "diffChanged", { link = "MoonflyCrimson" })
  highlight(0, "diffIndexLine", { link = "MoonflyCrimson" })
  highlight(0, "diffLine", { link = "MoonflySky" })
  highlight(0, "diffRemoved", { link = "MoonflyRed" })
  highlight(0, "diffSubname", { link = "MoonflySky" })

  -- Tagbar plugin
  highlight(0, "TagbarFoldIcon", { link = "MoonflyGrey62" })
  highlight(0, "TagbarVisibilityPublic", { link = "MoonflyLime" })
  highlight(0, "TagbarVisibilityProtected", { link = "MoonflyLime" })
  highlight(0, "TagbarVisibilityPrivate", { link = "MoonflyLime" })
  highlight(0, "TagbarKind", { link = "MoonflyEmerald" })

  -- fern.vim plugin
  highlight(0, "FernBranchSymbol", { link = "MoonflyGrey58" })
  highlight(0, "FernLeafSymbol", { link = "MoonflyBlue" })
  highlight(0, "FernLeaderSymbol", { link = "MoonflyGrey23" })
  highlight(0, "FernBranchText", { link = "MoonflyBlue" })
  highlight(0, "FernMarkedLine", { link = "MoonflyVisual" })
  highlight(0, "FernMarkedText", { link = "MoonflyCrimson" })
  highlight(0, "FernRootSymbol", { link = "MoonflyPurple" })
  highlight(0, "FernRootText", { link = "MoonflyPurple" })

  -- fern-git-status.vim plugin
  highlight(0, "FernGitStatusBracket", { link = "MoonflyGrey58" })
  highlight(0, "FernGitStatusIndex", { link = "MoonflyEmerald" })
  highlight(0, "FernGitStatusWorktree", { link = "MoonflyCrimson" })

  -- Glyph palette
  highlight(0, "GlyphPalette1", { link = "MoonflyCranberry" })
  highlight(0, "GlyphPalette2", { link = "MoonflyEmerald" })
  highlight(0, "GlyphPalette3", { link = "MoonflyYellow" })
  highlight(0, "GlyphPalette4", { link = "MoonflyBlue" })
  highlight(0, "GlyphPalette6", { link = "MoonflyTurquoise" })
  highlight(0, "GlyphPalette7", { link = "MoonflyWhite" })
  highlight(0, "GlyphPalette9", { link = "MoonflyCrimson" })

  -- Misc items
  highlight(0, "bufExplorerHelp", { link = "MoonflyGrey62" })
  highlight(0, "bufExplorerSortBy", { link = "MoonflyGrey62" })
  highlight(0, "CleverFDefaultLabel", { link = "MoonflyCrimson" })
  highlight(0, "CtrlPMatch", { link = "MoonflyCoral" })
  highlight(0, "Directory", { link = "MoonflyBlue" })
  highlight(0, "erubyDelimiter", { link = "MoonflyCrimson" })
  highlight(0, "jsonKeyword", { link = "MoonflySky" })
  highlight(0, "jsonQuote", { link = "MoonflyWhite" })
  highlight(0, "netrwClassify", { link = "MoonflyCranberry" })
  highlight(0, "netrwDir", { link = "MoonflySky" })
  highlight(0, "netrwExe", { link = "MoonflyKhaki" })
  highlight(0, "tagName", { link = "MoonflyTurquoise" })
  highlight(0, "Cheat40Header", { link = "MoonflyBlue" })
  highlight(0, "yamlBlockMappingKey", { link = "MoonflySky" })
  highlight(0, "yamlFlowMappingKey", { link = "MoonflySky" })
  if g.moonflyUnderlineMatchParen then
    highlight(0, "MatchWord", { underline = true, sp = vim.g.alphaMoonflyPallet.coral })
  else
    highlight(0, "MatchWord", { link = "MoonflyCoral" })
  end
  highlight(0, "snipLeadingSpaces", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "MatchWordCur", { bg = vim.g.alphaMoonflyPallet.bg })
  highlight(0, "fishVariable", { link = "MoonflyTurquoise" })
  highlight(0, "fishInnerVariable", { link = "MoonflyTurquoise" })

  -- FZF plugin
  highlight(0, "fzf1", { fg = vim.g.alphaMoonflyPallet.crimson, bg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "fzf2", { fg = vim.g.alphaMoonflyPallet.blue, bg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "fzf3", { fg = vim.g.alphaMoonflyPallet.emerald, bg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "fzfNormal", { fg = vim.g.alphaMoonflyPallet.grey70 })
  highlight(0, "fzfFgPlus", { fg = vim.g.alphaMoonflyPallet.grey89 })
  highlight(0, "fzfBorder", { fg = vim.g.alphaMoonflyPallet.grey18 })
  highlight(0, "fzfSubstring", { fg = vim.g.alphaMoonflyPallet.coral })
  g.fzf_colors = {
    ["fg"] = { "fg", "fzfNormal" },
    ["bg"] = { "bg", "Normal" },
    ["hl"] = { "fg", "fzfSubstring" },
    ["fg+"] = { "fg", "fzfFgPlus" },
    ["bg+"] = { "bg", "Pmenu" },
    ["hl+"] = { "fg", "fzfSubstring" },
    ["info"] = { "fg", "String" },
    ["border"] = { "fg", "fzfBorder" },
    ["prompt"] = { "fg", "fzf2" },
    ["pointer"] = { "fg", "Exception" },
    ["marker"] = { "fg", "StorageClass" },
    ["spinner"] = { "fg", "Type" },
    ["header"] = { "fg", "CursorLineNr" },
  }

  -- mistfly-statusline plugin
  highlight(0, "MistflyNormal", { link = "MoonflyBlueMode" })
  highlight(0, "MistflyInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "MistflyVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "MistflyCommand", { link = "MoonflyYellowMode" })
  highlight(0, "MistflyReplace", { link = "MoonflyCrimsonMode" })

  -- Coc plugin
  highlight(0, "CocUnusedHighlight", { link = "MoonflyGrey70" })
  highlight(0, "CocInlayHint", { link = "LspInlayHint" })

  -------------------------------------------------------------------------
  -- Neovim plugin styling
  -------------------------------------------------------------------------

  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "MoonflyGrey58" })
  highlight(0, "NvimTreeFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "MoonflyGrey23" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "MoonflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "MoonflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { bg = vim.g.alphaMoonflyPallet.grey15 })
  highlight(0, "NvimTreeExecFile", { fg = vim.g.alphaMoonflyPallet.green })
  highlight(0, "NvimTreeImageFile", { fg = vim.g.alphaMoonflyPallet.violet })
  if g.moonflyTransparent ~= true and g.moonflyNormalFloat ~= true then
    highlight(0, "NormalFloat", { bg = vim.g.alphaMoonflyPallet.bg, fg = vim.g.alphaMoonflyPallet.grey70 })
  end
  highlight(0, "NvimTreeOpenedFile", { fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "NvimTreeSymlink", { fg = vim.g.alphaMoonflyPallet.turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeCursorLine", { bg = vim.g.alphaMoonflyPallet.grey15 })
  highlight(0, "NeoTreeDimText", { link = "MoonflyGrey30" })
  highlight(0, "NeoTreeDirectoryIcon", { link = "MoonflyGrey58" })
  highlight(0, "NeoTreeDotfile", { link = "MoonflyGrey58" })
  highlight(0, "NeoTreeFloatTitle", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "NeoTreeFilterTerm", { link = "MoonflyBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "MoonflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "MoonflyCrimson" })
  highlight(0, "NeoTreeGitModified", { link = "MoonflyTurquoise" })
  highlight(0, "NeoTreeGitUntracked", { link = "MoonflyOrchid" })
  highlight(0, "NeoTreeIndentMarker", { link = "MoonflyGrey23" })
  highlight(0, "NeoTreeMessage", { link = "MoonflyGrey62" })
  highlight(0, "NeoTreeModified", { link = "MoonflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "MoonflyPurple" })
  highlight(0, "NeoTreeTitleBar", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.white })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "FloatBorder" })
  highlight(0, "TelescopeMatching", { link = "MoonflyCoral" })
  highlight(0, "TelescopeMultiIcon", { link = "MoonflyCrimson" })
  highlight(0, "TelescopeMultiSelection", { link = "MoonflyEmerald" })
  highlight(0, "TelescopeNormal", { link = "MoonflyGrey70" })
  highlight(0, "TelescopePreviewDate", { link = "MoonflyGrey58" })
  highlight(0, "TelescopePreviewGroup", { link = "MoonflyGrey58" })
  highlight(0, "TelescopePreviewLink", { link = "MoonflyTurquoise" })
  highlight(0, "TelescopePreviewMatch", { link = "MoonflyVisual" })
  highlight(0, "TelescopePreviewRead", { link = "MoonflyOrange" })
  highlight(0, "TelescopePreviewSize", { link = "MoonflyEmerald" })
  highlight(0, "TelescopePreviewUser", { link = "MoonflyGrey58" })
  highlight(0, "TelescopePromptPrefix", { link = "MoonflyBlue" })
  highlight(0, "TelescopeResultsDiffAdd", { link = "MoonflyGreen" })
  highlight(0, "TelescopeResultsDiffChange", { link = "MoonflyRed" })
  highlight(0, "TelescopeResultsDiffDelete", { link = "MoonflyCrimsonLine" })
  highlight(0, "TelescopeResultsSpecialComment", { link = "MoonflyGrey39" })
  highlight(0, "TelescopeSelectionCaret", { link = "MoonflyCrimson" })
  highlight(0, "TelescopeTitle", { link = "MoonflyGrey39" })
  highlight(0, "TelescopeSelection", { bg = vim.g.alphaMoonflyPallet.grey0, fg = vim.g.alphaMoonflyPallet.grey89 })

  -- gitsigns.nvim plugin
  --   sign column
  highlight(0, "GitSignsAdd", { link = "MoonflyEmerald" })
  highlight(0, "GitSignsChange", { link = "MoonflySky" })
  highlight(0, "GitSignsChangeDelete", { link = "MoonflyCoral" })
  highlight(0, "GitSignsDelete", { link = "MoonflyRed" })
  highlight(0, "GitSignsUntracked", { link = "MoonflyGrey39" })
  --   line highlights
  highlight(0, "GitSignsAddLn", { bg = vim.g.alphaMoonflyPallet.grey15 })
  highlight(0, "GitSignsChangeLn", { bg = vim.g.alphaMoonflyPallet.grey11 })
  --   word diff
  highlight(0, "GitSignsAddLnInline", { bg = vim.g.alphaMoonflyPallet.grey1 })
  highlight(0, "GitSignsChangeLnInline", { bg = vim.g.alphaMoonflyPallet.grey1 })
  --   word diff in preview
  highlight(0, "GitSignsAddInline", { bg = vim.g.alphaMoonflyPallet.green, fg = vim.g.alphaMoonflyPallet.black })
  highlight(0, "GitSignsChangeInline", { bg = vim.g.alphaMoonflyPallet.yellow, fg = vim.g.alphaMoonflyPallet.black })
  highlight(0, "GitSignsDeleteInline", { bg = vim.g.alphaMoonflyPallet.red, fg = vim.g.alphaMoonflyPallet.black })
  --   misc
  highlight(0, "GitSignsAddPreview", { link = "MoonflyEmeraldLine" })
  highlight(0, "GitSignsDeletePreview", { link = "MoonflyCrimsonLine" })
  highlight(0, "GitSignsDeleteVirtLn", { link = "MoonflyCrimsonLine" })

  -- Hop plugin
  highlight(0, "HopCursor", { link = "IncSearch" })
  highlight(0, "HopNextKey", { link = "MoonflyYellow" })
  highlight(0, "HopNextKey1", { link = "MoonflyBlue" })
  highlight(0, "HopNextKey2", { link = "MoonflyCrimson" })
  highlight(0, "HopUnmatched", { link = "MoonflyGrey62" })

  -- Barbar plugin
  highlight(0, "BufferCurrent", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferCurrentIndex", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferCurrentMod", { link = "MoonflyYellowLineActive" })
  highlight(0, "BufferCurrentSign", { link = "MoonflyBlueLineActive" })
  highlight(0, "BufferCurrentERROR", { link = "MoonflyRedLineActive" })
  highlight(0, "BufferCurrentWARN", { link = "MoonflyYellowLineActive" })
  highlight(0, "BufferCurrentINFO", { link = "MoonflyBlueLineActive" })
  highlight(0, "BufferCurrentHINT", { link = "MoonflyTurquoiseLineActive" })
  highlight(0, "BufferTabpages", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "BufferVisible", { link = "MoonflyGrey58Line" })
  highlight(0, "BufferVisibleIndex", { link = "MoonflyGrey58Line" })
  highlight(0, "BufferVisibleMod", { link = "MoonflyYellowLine" })
  highlight(0, "BufferVisibleSign", { link = "MoonflyGrey58Line" })
  highlight(0, "BufferVisibleERROR", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.red })
  highlight(0, "BufferVisibleWARN", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "BufferVisibleINFO", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "BufferVisibleHINT", { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.turquoise })
  highlight(0, "BufferInactive", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey58 })
  highlight(0, "BufferInactiveMod", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "BufferInactiveSign", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "BufferInactiveERROR", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.red })
  highlight(0, "BufferInactiveWARN", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.yellow })
  highlight(0, "BufferInactiveINFO", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "BufferInactiveHINT", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.turquoise })
  highlight(0, "BufferAlternate", { link = "BufferCurrent" })
  highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
  highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
  highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
  highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
  highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
  highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
  highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

  -- Bufferline plugin
  highlight(0, "BufferLineTabSelected", { fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "BufferLineIndicatorSelected", { fg = vim.g.alphaMoonflyPallet.blue })

  -- nvim-cmp plugin
  highlight(0, "CmpItemAbbrMatch", { link = "MoonflyYellow" })
  highlight(0, "CmpItemAbbrMatchFuzzy", { link = "MoonflyCoral" })
  highlight(0, "CmpItemKind", { link = "MoonflyWhite" })
  highlight(0, "CmpItemKindClass", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindColor", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindConstant", { link = "MoonflyPurple" })
  highlight(0, "CmpItemKindConstructor", { link = "MoonflySky" })
  highlight(0, "CmpItemKindEnum", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindEnumMember", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindEvent", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindField", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindFile", { link = "MoonflyBlue" })
  highlight(0, "CmpItemKindFolder", { link = "MoonflyBlue" })
  highlight(0, "CmpItemKindFunction", { link = "MoonflySky" })
  highlight(0, "CmpItemKindInterface", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindKeyword", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindMethod", { link = "MoonflySky" })
  highlight(0, "CmpItemKindModule", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindOperator", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindProperty", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindReference", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindSnippet", { link = "MoonflyGreen" })
  highlight(0, "CmpItemKindStruct", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindText", { link = "MoonflyGrey70" })
  highlight(0, "CmpItemKindTypeParameter", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindUnit", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindValue", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindVariable", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemMenu", { link = "MoonflyGrey62" })

  -- Indent Blankline plugin v3 & later
  highlight(0, "IblIndent", { fg = vim.g.alphaMoonflyPallet.grey15, nocombine = true })
  highlight(0, "IblScope", { fg = vim.g.alphaMoonflyPallet.violet, nocombine = true })
  highlight(0, "IblWhitespace", { fg = vim.g.alphaMoonflyPallet.grey15, nocombine = true })
  -- Indent Blankline plugin v2 & earlier
  highlight(0, "IndentBlanklineChar", { link = "IblIndent" })
  highlight(0, "IndentBlanklineSpaceChar", { link = "IblWhitespace" })
  highlight(0, "IndentBlanklineSpaceCharBlankline", { link = "IblWhitespace" })

  -- Mini.nvim plugin
  highlight(0, "MiniCompletionActiveParameter", { link = "MoonflyVisual" })
  highlight(0, "MiniCursorword", { link = "MoonflyUnderline" })
  highlight(0, "MiniCursorwordCurrent", { link = "MoonflyUnderline" })
  highlight(0, "MiniIndentscopePrefix", { link = "MoonflyNoCombine" })
  highlight(0, "MiniIndentscopeSymbol", { link = "MoonflyWhite" })
  highlight(0, "MiniJump", { link = "SpellRare" })
  highlight(0, "MiniStarterCurrent", { link = "MoonflyNoCombine" })
  highlight(0, "MiniStarterFooter", { link = "Title" })
  highlight(0, "MiniStarterHeader", { link = "MoonflyViolet" })
  highlight(0, "MiniStarterInactive", { link = "Comment" })
  highlight(0, "MiniStarterItem", { link = "Normal" })
  highlight(0, "MiniStarterItemBullet", { link = "Delimiter" })
  highlight(0, "MiniStarterItemPrefix", { link = "MoonflyYellow" })
  highlight(0, "MiniStarterQuery", { link = "MoonflySky" })
  highlight(0, "MiniStarterSection", { link = "MoonflyCrimson" })
  highlight(0, "MiniStatuslineModeCommand", { link = "MoonflyYellowMode" })
  highlight(0, "MiniStatuslineModeInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "MiniStatuslineModeNormal", { link = "MoonflyBlueMode" })
  highlight(0, "MiniStatuslineModeOther", { link = "MoonflyTurquoiseMode" })
  highlight(0, "MiniStatuslineModeReplace", { link = "MoonflyCrimsonMode" })
  highlight(0, "MiniStatuslineModeVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "MiniSurround", { link = "IncSearch" })
  highlight(0, "MiniTablineCurrent", { link = "MoonflyWhiteLineActive" })
  highlight(0, "MiniTablineFill", { link = "TabLineFill" })
  highlight(0, "MiniTablineModifiedCurrent", { link = "MoonflyYellowLineActive" })
  highlight(0, "MiniTablineModifiedVisible", { link = "MoonflyYellowLine" })
  highlight(0, "MiniTablineTabpagesection", { link = "MoonflyBlueMode" })
  highlight(0, "MiniTablineVisible", { link = "MoonflyGrey58Line" })
  highlight(0, "MiniTestEmphasis", { link = "MoonflyUnderline" })
  highlight(0, "MiniTestFail", { link = "MoonflyRed" })
  highlight(0, "MiniTestPass", { link = "MoonflyGreen" })
  highlight(0, "MiniTrailspace", { link = "MoonflyCrimsonMode" })
  highlight(0, "MiniJump2dSpot", { fg = vim.g.alphaMoonflyPallet.yellow, underline = true, nocombine = true })
  highlight(0, "MiniStatuslineDevinfo", { bg = vim.g.alphaMoonflyPallet.grey39, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "MiniStatuslineFileinfo", { bg = vim.g.alphaMoonflyPallet.grey39, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "MiniStatuslineFilename", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "MiniStatuslineInactive", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey62 })
  highlight(0, "MiniTablineHidden", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey58 })
  highlight(
    0,
    "MiniTablineModifiedHidden",
    { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.yellow }
  )

  -- Dashboard plugin
  highlight(0, "DashboardCenter", { link = "MoonflyViolet" })
  highlight(0, "DashboardFooter", { link = "MoonflyCoral" })
  highlight(0, "DashboardHeader", { link = "MoonflyBlue" })
  highlight(0, "DashboardShortCut", { link = "MoonflyTurquoise" })

  -- nvim-notify plugin
  highlight(0, "NotifyERRORBorder", { link = "FloatBorder" })
  highlight(0, "NotifyWARNBorder", { link = "FloatBorder" })
  highlight(0, "NotifyINFOBorder", { link = "FloatBorder" })
  highlight(0, "NotifyDEBUGBorder", { link = "FloatBorder" })
  highlight(0, "NotifyTRACEBorder", { link = "FloatBorder" })
  highlight(0, "NotifyERRORIcon", { link = "MoonflyRed" })
  highlight(0, "NotifyWARNIcon", { link = "MoonflyYellow" })
  highlight(0, "NotifyINFOIcon", { link = "MoonflyBlue" })
  highlight(0, "NotifyDEBUGIcon", { link = "MoonflyGrey58" })
  highlight(0, "NotifyTRACEIcon", { link = "MoonflyPurple" })
  highlight(0, "NotifyERRORTitle", { link = "MoonflyRed" })
  highlight(0, "NotifyWARNTitle", { link = "MoonflyYellow" })
  highlight(0, "NotifyINFOTitle", { link = "MoonflyBlue" })
  highlight(0, "NotifyDEBUGTitle", { link = "MoonflyGrey58" })
  highlight(0, "NotifyTRACETitle", { link = "MoonflyPurple" })

  -- lazy.nvim plugin
  highlight(0, "LazyCommit", { link = "MoonflyEmerald" })
  highlight(0, "LazyCommitType", { link = "MoonflyViolet" })
  highlight(0, "LazyDimmed", { fg = vim.g.alphaMoonflyPallet.grey58 })
  highlight(0, "LazyH1", { link = "MoonflyBlueMode" })
  highlight(0, "LazyProgressDone", { link = "MoonflyBlue" })
  highlight(0, "LazyProgressTodo", { link = "MoonflyGrey0" })
  highlight(0, "LazyReasonCmd", { link = "MoonflyGreen" })
  highlight(0, "LazyReasonPlugin", { link = "MoonflyOrchid" })
  highlight(0, "LazyReasonRuntime", { link = "MoonflyViolet" })
  highlight(0, "LazySpecial", { link = "MoonflyBlue" })
  highlight(0, "LazyButton", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "LazyButtonActive", { bg = vim.g.alphaMoonflyPallet.grey30, fg = vim.g.alphaMoonflyPallet.grey89 })
  if g.moonflyNormalFloat ~= true then
    highlight(0, "LazyNormal", { bg = vim.g.alphaMoonflyPallet.grey7, fg = vim.g.alphaMoonflyPallet.white })
  end

  -- mason.nvim plugin
  highlight(0, "MasonError", { link = "MoonflyRed" })
  highlight(0, "MasonHeader", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHeaderSecondary", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHeading", { link = "MoonflyGrey89" })
  highlight(0, "MasonHighlight", { link = "MoonflyBlue" })
  highlight(0, "MasonHighlightBlock", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHighlightBlockBold", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHighlightBlockBoldSecondary", { link = "MoonflyEmeraldMode" })
  highlight(0, "MasonHighlightBlockSecondary", { link = "MoonflyEmeraldMode" })
  highlight(0, "MasonHighlightSecondary", { link = "MoonflyEmerald" })
  highlight(0, "MasonLink", { link = "MoonflyPurple" })
  highlight(0, "MasonMuted", { link = "MoonflyGrey39" })
  highlight(0, "MasonMutedBlock", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "MasonMutedBlockBold", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.grey89 })

  -- linefly plugin
  highlight(0, "LineflyNormal", { link = "MoonflyBlueMode" })
  highlight(0, "LineflyInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "LineflyVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "LineflyCommand", { link = "MoonflyYellowMode" })
  highlight(0, "LineflyReplace", { link = "MoonflyCrimsonMode" })

  -- lspsaga.nvim plugin
  highlight(0, "TitleString", { link = "MoonflyBlue" })
  highlight(0, "TitleIcon", { link = "MoonflyBlue" })
  highlight(0, "TitleSymbol", { link = "MoonflyBlue" })
  highlight(0, "SagaBorder", { link = "FloatBorder" })
  highlight(0, "SagaNormal", { link = "Normal" })
  highlight(0, "SagaExpand", { link = "MoonflyCranberry" })
  highlight(0, "SagaCollapse", { link = "MoonflyCranberry" })
  highlight(0, "SagaBeacon", { link = "MoonflyPurpleMode" })
  highlight(0, "ActionPreviewTitle", { link = "MoonflyBlue" })
  highlight(0, "CodeActionText", { link = "MoonflyYellow" })
  highlight(0, "CodeActionConceal", { link = "MoonflyGreen" })
  highlight(0, "FinderSelection", { link = "MoonflyTurquoise" })
  highlight(0, "FinderFName", { link = "MoonflyWhite" })
  highlight(0, "FinderCode", { link = "MoonflyWhite" })
  highlight(0, "FinderIcon", { link = "MoonflyTurquoise" })
  highlight(0, "FinderType", { link = "MoonflyViolet" })
  highlight(0, "FinderSpinnerTitle", { link = "MoonflyPurple" })
  highlight(0, "FinderSpinner", { link = "MoonflyPurple" })
  highlight(0, "RenameNormal", { link = "MoonflyOrange" })
  highlight(0, "DiagnosticSource", { link = "MoonflyGrey39" })
  highlight(0, "DiagnosticText", { link = "MoonflyRed" })
  highlight(0, "CallHierarchyIcon", { link = "MoonflyViolet" })
  highlight(0, "CallHierarchyTitle", { link = "MoonflyCranberry" })
  highlight(0, "SagaShadow", { link = "Normal" })
  highlight(0, "OutlineIndent", { link = "MoonflyPurple" })

  -- Noice plugin
  highlight(0, "NoiceCmdlinePopup", { link = "MoonflyGrey50" })
  highlight(0, "NoiceCmdlinePopupBorder", { link = "MoonflyGrey27" })
  highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "MoonflyGrey27" })
  highlight(0, "NoiceCmdlinePrompt", { link = "MoonflyBlue" })
  highlight(0, "NoiceCompletionItemKindDefault", { link = "MoonflyTurquoise" })
  highlight(0, "NoiceConfirmBorder", { link = "MoonflyBlue" })
  highlight(0, "NoiceFormatTitle", { link = "MoonflyCranberry" })

  -- nvim-navic plugin
  highlight(0, "NavicText", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.grey70 })
  highlight(0, "NavicSeparator", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.white })
  highlight(0, "NavicIconsOperator", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.cranberry })
  highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
  highlight(0, "NavicIconsClass", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.emerald })
  highlight(0, "NavicIconsConstant", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.orange })
  highlight(0, "NavicIconsConstructor", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.sky })
  highlight(0, "NavicIconsEnum", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.violet })
  highlight(
    0,
    "NavicIconsEnumMember",
    { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.turquoise }
  )
  highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsFile", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.blue })
  highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
  highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNull", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.green })
  highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsString", { bg = vim.g.alphaMoonflyPallet.grey18, fg = vim.g.alphaMoonflyPallet.khaki })
  highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
  highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })

  -- Rainbow Delimiters plugin
  highlight(0, "RainbowDelimiterRed", { link = "MoonflyRed" })
  highlight(0, "RainbowDelimiterYellow", { link = "MoonflyYellow" })
  highlight(0, "RainbowDelimiterBlue", { link = "MoonflyBlue" })
  highlight(0, "RainbowDelimiterOrange", { link = "MoonflyOrange" })
  highlight(0, "RainbowDelimiterGreen", { link = "MoonflyGreen" })
  highlight(0, "RainbowDelimiterViolet", { link = "MoonflyViolet" })
  highlight(0, "RainbowDelimiterCyan", { link = "MoonflyTurquoise" })

  -- Neogit plugin
  highlight(0, "NeogitBranch", { link = "MoonflySky" })
  highlight(0, "NeogitDiffAddHighlight", { link = "MoonflyEmeraldLine" })
  highlight(0, "NeogitDiffContextHighlight", { bg = vim.g.alphaMoonflyPallet.grey11 })
  highlight(0, "NeogitDiffDeleteHighlight", { link = "MoonflyCrimsonLine" })
  highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
  highlight(0, "NeogitHunkHeaderHighlight", { link = "MoonflyBlueLineActive" })
  highlight(0, "NeogitRemote", { link = "MoonflyPurple" })

  -- nvim-window-picker plugin
  highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
  highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
  highlight(0, "WindowPickerWinBar", { link = "WinBar" })
  highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })

  -- nvim-dap-ui
  highlight(
    0,
    "DapUIBreakpointsCurrentLine",
    { bg = vim.g.alphaMoonflyPallet.grey11, fg = vim.g.alphaMoonflyPallet.green }
  )
  highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
  highlight(0, "DapUIBreakpointsInfo", { link = "MoonflySky" })
  highlight(0, "DapUIBreakpointsPath", { link = "MoonflyTurquoise" })
  highlight(0, "DapUIDecoration", { link = "MoonflyBlue" })
  highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
  highlight(0, "DapUILineNumber", { link = "Number" })
  highlight(0, "DapUIModifiedValue", { fg = vim.g.alphaMoonflyPallet.white, underline = true })
  highlight(0, "DapUIPlayPause", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.green })
  highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
  highlight(0, "DapUIScope", { link = "MoonflySky" })
  highlight(0, "DapUISource", { link = "MoonflyViolet" })
  highlight(0, "DapUIStepBack", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.turquoise })
  highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
  highlight(0, "DapUIStop", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.red })
  highlight(0, "DapUIStoppedThread", { link = "MoonflyTurquoise" })
  highlight(0, "DapUIThread", { link = "MoonflyGreen" })
  highlight(0, "DapUIType", { link = "Type" })
  highlight(0, "DapUIUnavailable", { bg = vim.g.alphaMoonflyPallet.grey15, fg = vim.g.alphaMoonflyPallet.grey39 })
  highlight(0, "DapUIWatchesEmpty", { link = "MoonflyRed" })
  highlight(0, "DapUIWatchesError", { link = "MoonflyRed" })
  highlight(0, "DapUIWatchesValue", { link = "MoonflyGreen" })
  highlight(0, "DapUIWinSelect", { link = "MoonflyBlue" })

  -- arrow.nvim
  highlight(0, "ArrowCurrentFile", { link = "MoonflyEmerald" })

  highlight(0, "FidgetTask", { fg = vim.g.alphaMoonflyPallet.grey89 })
  highlight(0, "FidgetTitle", { fg = vim.g.alphaMoonflyPallet.grey89 })
  -- highlight(0,"FidgetTask",{bg=vim.g.alphaMoonflyPallet.grey7})
end

function M.setup(overrides_color)
  if vim.g.alphaMoonflyPallet ~= nil then
    return
  end
  local pallet = require("pm_user.clr.pallet").palette
  if overrides_color == nil then
    return
  end
  for key, value in pairs(overrides_color) do
    pallet[key] = value
  end
  vim.g.alphaMoonflyPallet = pallet
end

return M
