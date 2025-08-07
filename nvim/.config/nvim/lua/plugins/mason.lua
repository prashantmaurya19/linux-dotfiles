return {

  { "mfussenegger/nvim-jdtls" },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      vim.PM.lsp.setup_handlers(require("cmp_nvim_lsp"))
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/nvim-cmp",
    },
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        automatic_enable = false,
        ensure_installed = { "lua_ls", "jdtls", "cssls", "ts_ls", "tailwindcss" },
      })
      -- enabling LSPs with default configrations
      for _, value in ipairs({
        "lua_ls",
        "ts_ls",
      }) do
        vim.lsp.enable(value)
      end
    end,
  },
}
