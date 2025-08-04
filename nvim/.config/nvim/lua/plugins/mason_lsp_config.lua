return {

  { "mfussenegger/nvim-jdtls" },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- require("lspconfig").cssmodules_ls.setup({
      --   -- provide your on_attach to bind keymappings
      --   on_attach = require("pm_user.remaps").on_lsp_attach,
      --   -- optionally
      --   init_options = {
      --     camelCase = "dashes",
      --   },
      -- })

      lspconfig["dartls"].setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        dart = {
          analysisexcludedfolders = {
            vim.fn.expand("$home/appdata/local/pub/cache"),
            vim.fn.expand("$home/.pub-cache"),
            vim.fn.expand("/opt/homebrew/"),
            vim.fn.expand("$home/flutter_home/flutter/"),
          },
          updateimportsonrename = true,
          completefunctioncalls = true,
          showtodos = true,
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "jdtls", "cssls", "ts_ls", "tailwindcss" },
        handlers = {
          function(server_name) -- default handler (optional)
            lspconfig[server_name].setup({
              capabilities = cmp_nvim_lsp.default_capabilities(),
            })
          end,
          ["jdtls"] = function() end,
          ["tailwindcss"] = function(sname)
            lspconfig[sname].setup({
              capabilities = cmp_nvim_lsp.default_capabilities(),
              filetypes = { "javascriptreact", "typescriptreact" },
              classAttributes = { "className", "classList", "inputClass", "svgClass", "pathClass" },
            })
          end,
          ["cssls"] = function(server_name)
            lspconfig[server_name].setup({
              capabilities = cmp_nvim_lsp.default_capabilities(),
              filetypes = { "javascriptreact", "typescriptreact" },
              settings = {
                css = {
                  lint = {
                    unknownAtRules = "ignore", -- Optional: to ignore unknown at-rules from CSS-in-JS
                  },
                },
                less = {
                  lint = {
                    unknownAtRules = "ignore",
                  },
                },
                scss = {
                  lint = {
                    unknownAtRules = "ignore",
                  },
                },
              },
            })
          end,
          ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
              capabilities = cmp_nvim_lsp.default_capabilities(),
              settings = {
                lua = {
                  diagnostics = {
                    globals = { "vim" },
                  },
                },
              },
            })
          end,
          ["emmet_ls"] = function()
            -- local configs = require("lspconfig/configs")
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true
            lspconfig.emmet_ls.setup({
              capabilities = capabilities,
              filetypes = { "eruby", "html", "javascriptreact", "typescriptreact", "vue" },
              init_options = {
                html = {
                  options = {
                    -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                    ["bem.enabled"] = true,
                  },
                },
              },
            })
          end,
        },
      })
    end,
  },
}
