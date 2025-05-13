return {
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      local conform = require("conform")
      conform.setup({
        -- format_on_save = {
        --   enabled = false,
        -- },
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black" },
          rust = { "rustfmt" },
          html = { "prettier" },
          css = { "prettier" },
          scss = { "prettier" },
          javascript = { "prettier" },
          javascriptreact = { "prettier" },
          json = { "prettier" },
          xml = { "xmlformatter" },
          java = { "google-java-format" },
        },
        formatters = {
          stylua = {
            append_args = {
              "--indent-width",
              vim.PM.g.shiftwidth.lua,
              "--indent-type",
              "Spaces",
            },
          },
	  prettier={
	    "--tab-width ",
	    vim.PM.g.shiftwidth.javascriptreact,
	    "--use-tabs false",
	  }
        },
      })
    end,
  },
}
