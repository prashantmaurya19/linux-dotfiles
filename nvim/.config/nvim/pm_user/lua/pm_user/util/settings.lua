local M = {}

M.luatab = {
  TelescopePrompt = "Telescope",
  git = "Git",
  fugitive = "Fugitive",
  netrw = "netrw",
  ["checkhealth"] = "checkhealth",
}

M.path_sep = package.config:sub(1, 1)

M.shiftwidth = {
  lisp = 4,
  dart = 2,
  css = 2,
  javascript = 2,
  javascriptreact = 2,
  java = 2,
  ps1 = 2,
  lua = 2,
  html = 3,
  sh = 2,
}

M.forward_slash_comment_filext = {
  dart = true,
  lisp = true,
}

M.hash_comment_filext = {
  text = true,
}

M.cmp_menu_icon = {
  -- nvim_lsp = "NLSP",
  nvim_lua = "NLUA",
  luasnip = "LSNP",
  buffer = "BUFF",
  path = "PATH",
}

-- M.file_type_setup = {
--   java = function()
--     local home = os.getenv("HOME")
--     local workspace_path = home .. "AppData/Local/nvim/jdtls-workspace/"
--     local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
--     local workspace_dir = workspace_path .. project_name

--     local status, jdtls = pcall(require, "jdtls")
--     if not status then
--       return
--     end
--     local extendedClientCapabilities = jdtls.extendedClientCapabilities

--     local config = {
--       cmd = {
--         "java",
--         "-Declipse.application=org.eclipse.jdt.ls.core.id1",
--         "-Dosgi.bundles.defaultStartLevel=4",
--         "-Declipse.product=org.eclipse.jdt.ls.core.product",
--         "-Dlog.protocol=true",
--         "-Dlog.level=ALL",
--         "-Xmx1g",
--         "--add-modules=ALL-SYSTEM",
--         "--add-opens",
--         "java.base/java.util=ALL-UNNAMED",
--         "--add-opens",
--         "java.base/java.lang=ALL-UNNAMED",
--         "-javaagent:" .. home .. "/AppData/Local/nvim-data/mason/packages/jdtls/lombok.jar",
--         "-jar",
--         vim.fn.glob(home .. "/AppData/Local/nvim-data/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
--         "-configuration",
--         home .. "/AppData/Local/nvim-data/mason/packages/jdtls/config_win",
--         "-data",
--         workspace_dir,
--       },
--       root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

--       settings = {
--         java = {
--           signatureHelp = { enabled = true },
--           extendedClientCapabilities = extendedClientCapabilities,
--           maven = {
--             downloadSources = true,
--           },
--           referencesCodeLens = {
--             enabled = true,
--           },
--           references = {
--             includeDecompiledSources = true,
--           },
--           inlayHints = {
--             parameterNames = {
--               enabled = "all", -- literals, all, none
--             },
--           },
--           format = {
--             enabled = false,
--           },
--         },
--       },

--       init_options = {
--         bundles = {},
--       },
--     }
--     require("jdtls").start_or_attach(config)
--   end,
-- }

return M
