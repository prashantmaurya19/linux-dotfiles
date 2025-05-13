return {
  setup = function()
    require("pm_user.util")
    require("pm_user.user_init")
    require("pm_user.commands")
    require("pm_user.remaps")
    require("pm_user.auto_cmd")
    vim.PM = {
      git_branch = "",
      g = require("pm_user.util.settings"),
      text = require("pm_user.util.texts"),
      file = require("pm_user.util.file"),
      lsp = require("pm_user.util.lsp"),
      vim = require("pm_user.util.vim"),
    }
  end,
}
