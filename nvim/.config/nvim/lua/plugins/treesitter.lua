return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true, auto_update = true })()
      require("nvim-treesitter.install").compilers = { "zig" }
    end,
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "lua", "javascript", "python", "rust", "java" },
        sync_install = true,
        auto_install = true,
        highlight = {
          enable = true,
          -- disable = { "java" }, -- List of languages to disable
        },
        indent = { enable = true },
      })
    end,
  },
}
