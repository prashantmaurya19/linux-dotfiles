return {
  "https://github.com/onsails/lspkind.nvim.git",
  -- "rambhosale/cmp-bootstrap.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "saadparwaiz1/cmp_luasnip",
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "roobert/tailwindcss-colorizer-cmp.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "https://github.com/onsails/lspkind.nvim.git",
      "saadparwaiz1/cmp_luasnip",
      "rambhosale/cmp-bootstrap.nvim",
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      vim.opt.pumblend = 0
      -- local tailwind_formater = require("tailwindcss-colorizer-cmp").formatter
      cmp.setup({
        formatting = {
          fields = { "abbr", "menu", "kind" },
          format = lspkind.cmp_format({
            mode = "symbol", -- show only symbol annotations
            maxwidth = {
              -- menu = function()
              --   return math.floor(0.45 * vim.o.columns)
              -- end,
              menu = 50, -- leading text (labelDetails)
              abbr = 50, -- actual suggestion item
              kind = 50, -- actual suggestion item
            },
            ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
            show_labelDetails = true, -- show labelDetails in menu. Disabled by default

            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function(entry, vim_item)
              vim_item.kind = lspkind.presets.default[vim_item.kind]
              -- end
              vim_item.menu = ({
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                luasnip = "[Snippet]",
                buffer = "[BUF]",
                cmp_bootstrap = "[󰛆]",
              })[entry.source.name]
              return vim_item
            end,
          }),
        },
        completion = { completeopt = "menu,menuone,noinsert" },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          -- documentation = cmp.config.window.bordered(),
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-y>"] = cmp.mapping(
            cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Insert,
              select = true,
            }),
            { "i", "c" }
          ),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Insert }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })

      -- Set configuration for specific filetype.
      cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
          { name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
        }, {
          { name = "buffer" },
        }),
      })

      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })
      -- cmp.setup.filetype("html", {
      --   sources = cmp.config.sources({
      --     { name = "cmp_bootstrap" },
      --     -- other sources
      --   }),
      -- })
    end,
  },
}
