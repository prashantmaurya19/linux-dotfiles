local M = {}

M.handler = {
  ["tailwindcss"] = function()
    local cnf = vim.lsp.config.tailwindcss
    cnf.filetypes = { "css", "sass", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" }
    cnf.settings.tailwindCSS.classAttributes = {
      "class",
      "className",
      "class:list",
      "classList",
      "ngClass",
      "inputClass",
      "svgClass",
      "pathClass",
    }
    cnf.settings.tailwindCSS.validate = true
    cnf.settings.tailwindCSS.classFunctions = { "joinTWClass", "tw\\.[a-z-]+", "expandTWClass" }
    vim.lsp.config["tailwindcss"] = cnf
  end,
  ["cssls"] = function()
    local cnf = vim.lsp.config.cssls
    cnf.filetypes = { "css", "sass", "scss" }
    -- cnf.settings = {
    --   css = {
    --     lint = {
    --       unknownAtRules = "ignore", -- Optional: to ignore unknown at-rules from CSS-in-JS
    --     },
    --   },
    --   less = {
    --     lint = {
    --       unknownAtRules = "ignore",
    --     },
    --   },
    --   scss = {
    --     lint = {
    --       unknownAtRules = "ignore",
    --     },
    --   },
    -- }
    vim.lsp.config["cssls"] = cnf
  end,
  ["lua_ls"] = function()
    local cnf = vim.lsp.config.lua_ls
    cnf.settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    }
    vim.lsp.config["lua_ls"] = cnf
  end,
  -- ["dartls"] = function(cmp_nvim_lsp)
  --   return {
  --     capabilities = cmp_nvim_lsp.default_capabilities(),
  --     dart = {
  --       analysisexcludedfolders = {
  --         vim.fn.expand("$home/appdata/local/pub/cache"),
  --         vim.fn.expand("$home/.pub-cache"),
  --         vim.fn.expand("/opt/homebrew/"),
  --         vim.fn.expand("$home/flutter_home/flutter/"),
  --       },
  --       updateimportsonrename = true,
  --       completefunctioncalls = true,
  --       showtodos = true,
  --     },
  --   }
  -- end,
}

M.lsp_process = function()
  local lsp = vim.lsp.util.get_progress_messages()[1]
  if lsp then
    local name = lsp.name or ""
    local msg = lsp.message or ""
    local percentage = lsp.percentage or 0
    local title = lsp.title or ""
    return string.format(" %%<%s: %s %s (%s%%%%) ", name, title, msg, percentage)
  end
  return ""
end

--- setup lsp handlers
--- @param cmp_nvim_lsp table
M.setup_handlers = function(cmp_nvim_lsp)
  vim.lsp.config("*", {
    capabilities = cmp_nvim_lsp.default_capabilities(),
  })
  for key, value in pairs(M.handler) do
    value()
    vim.lsp.enable(key)
  end
end

return M
