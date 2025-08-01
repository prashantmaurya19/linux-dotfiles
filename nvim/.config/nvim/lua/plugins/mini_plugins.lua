return {
  "nvim-tree/nvim-web-devicons",
  "https://github.com/tpope/vim-commentary",
  "ryanoasis/vim-devicons",
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },
  {
    "folke/lsp-colors.nvim",
    config = function()
      require("lsp-colors").setup({
        Error = "#db4b4b",
        Warning = "#e0af68",
        Information = "#0db9d7",
        Hint = "#10B981",
      })
    end,
  },
  {
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  {
    "alvarosevilla95/luatab.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    opts = {
      options = {
        always_show_bufferline = true, -- This will show the tabline even with one buffer
      },
    },
    config = function()
      require("luatab").setup({
        title = function(bufnr)
          local file = vim.fn.bufname(bufnr)
          local filetype = vim.fn.getbufvar(bufnr, "&filetype")
          local buftype = vim.fn.getbufvar(bufnr, "&buftype")

          if buftype == "help" then
            return "help:" .. vim.fn.fnamemodify(file, ":t:r")
          elseif buftype == "quickfix" then
            return "quickfix"
          elseif vim.PM.g.luatab[filetype] ~= nil then
            return vim.PM.g.luatab[filetype]
          elseif file:sub(file:len() - 2, file:len()) == "FZF" then
            return "FZF"
          elseif buftype == "terminal" then
            local _, mtch = string.match(file, "term:(.*):(%a+)")
            return mtch ~= nil and mtch or vim.fn.fnamemodify(vim.env.SHELL, ":t")
          elseif file == "" then
            return "[No Name]"
          else
            return vim.fn.pathshorten(vim.fn.fnamemodify(file, ":p:~:t"))
          end
        end,
        devicon = function(bufnr, isSelected)
          local icon, devhl
          local file = vim.fn.bufname(bufnr)
          local buftype = vim.fn.getbufvar(bufnr, "&buftype")
          local filetype = vim.fn.getbufvar(bufnr, "&filetype")
          local devicons = require("nvim-web-devicons")
          if filetype == "TelescopePrompt" then
            icon, devhl = devicons.get_icon("telescope")
          elseif filetype == "fugitive" then
            icon, devhl = devicons.get_icon("git")
          elseif filetype == "vimwiki" then
            icon, devhl = devicons.get_icon("markdown")
          elseif filetype == "netrw" then
            icon, devhl = devicons.get_icon("markdown")
            icon = "󰙅"
          elseif filetype == "checkhealth" then
            icon, devhl = devicons.get_icon("git")
            icon = ""
          elseif buftype == "terminal" then
            icon, devhl = devicons.get_icon("zsh")
          else
            icon, devhl = devicons.get_icon(file, vim.fn.expand("#" .. bufnr .. ":e"))
          end
          if icon then
            local h = require("luatab.highlight")
            local fg = h.extract_highlight_colors(devhl, "fg")
            local bg = h.extract_highlight_colors("TabLineSel", "bg")
            local hl = h.create_component_highlight_group({ bg = bg, fg = fg }, devhl)
            local selectedHlStart = (isSelected and hl) and "%#" .. hl .. "#" or ""
            local selectedHlEnd = isSelected and "%#TabLineSel#" or ""
            return selectedHlStart .. icon .. selectedHlEnd .. " "
          end
          return ""
        end,
      })
    end,
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({
        ---Render style
        ---@usage 'background'|'foreground'|'virtual'
        render = "virtual",

        ---Set virtual symbol (requires render to be set to 'virtual')
        virtual_symbol = "■",

        ---Set virtual symbol suffix (defaults to '')
        virtual_symbol_prefix = "",

        ---Set virtual symbol suffix (defaults to ' ')
        virtual_symbol_suffix = " ",

        ---Set virtual symbol position()
        ---@usage 'inline'|'eol'|'eow'
        ---inline mimics VS Code style
        ---eol stands for `end of column` - Recommended to set `virtual_symbol_suffix = ''` when used.
        ---eow stands for `end of word` - Recommended to set `virtual_symbol_prefix = ' ' and virtual_symbol_suffix = ''` when used.
        virtual_symbol_position = "inline",

        ---Highlight hex colors, e.g. '#FFFFFF'
        enable_hex = true,

        ---Highlight short hex colors e.g. '#fff'
        enable_short_hex = true,

        ---Highlight rgb colors, e.g. 'rgb(0 0 0)'
        enable_rgb = true,

        ---Highlight hsl colors, e.g. 'hsl(150deg 30% 40%)'
        enable_hsl = true,

        ---Highlight ansi colors, e.g '\033[0;34m'
        enable_ansi = true,

        -- Highlight hsl colors without function, e.g. '--foreground: 0 69% 69%;'
        enable_hsl_without_function = true,

        ---Highlight CSS variables, e.g. 'var(--testing-color)'
        enable_var_usage = true,

        ---Highlight named colors, e.g. 'green'
        enable_named_colors = true,

        ---Highlight tailwind colors, e.g. 'bg-blue-500'
        enable_tailwind = false,
      })
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED
      vim.keymap.set("n", "<leader>h", function()
        harpoon:list():add()
      end)
      vim.keymap.set("n", "<A-e>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set("n", "<A-u>", function()
        harpoon:list():select(1)
      end)
      vim.keymap.set("n", "<A-i>", function()
        harpoon:list():select(2)
      end)
      vim.keymap.set("n", "<A-o>", function()
        harpoon:list():select(3)
      end)
      vim.keymap.set("n", "<A-p>", function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-S-P>", function()
        harpoon:list():prev()
      end)
      vim.keymap.set("n", "<C-S-N>", function()
        harpoon:list():next()
      end)
    end,
  },
}
