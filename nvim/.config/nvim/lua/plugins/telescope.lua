return {

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local telescopeConfig = require("telescope.config")

      -- Clone the default Telescope configuration
      local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
      -- local vimgrep_arguments = {"grep"}

      -- I want to search in hidden/dot files.
      table.insert(vimgrep_arguments, "-g")
      table.insert(vimgrep_arguments, "'!**/.git/*'")
      table.insert(vimgrep_arguments, "-g")
      table.insert(vimgrep_arguments, "'!**/node_modules/**'")
      table.insert(vimgrep_arguments, "-g")
      table.insert(vimgrep_arguments, "'!**/build/*'")
      table.insert(vimgrep_arguments, "-g")
      table.insert(vimgrep_arguments, "'!**/target/*'")
      table.insert(vimgrep_arguments, "-g")
      table.insert(vimgrep_arguments, "'!**/dist/*'")
      table.insert(vimgrep_arguments, "--hidden")

      telescope.setup({
        defaults = {
          -- `hidden = true` is not supported in text grep commands.
          path_display = { "truncate" },
        },
        file_ignore_patterns = {
          "node_modules/", -- Ignores 'node_modules' folder
          "^vendor/", -- Ignores 'vendor' folder at the root
          ".git/", -- Ignores '.git' folder
          "build/", -- Ignores 'build' folder
          "^dist/", -- Ignores 'dist' folder
        },
        pickers = {
          layout_strategy = "vertical",
          layout_config = {
            height = 40,
            width = 0.8,
          },
          find_files = {
            find_command = { "rg", "--files", "--color", "never", "--no-require-git" },
          },
          current_buffer_fuzzy_find = {
            previewer = false,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              -- even more opts
            }),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
