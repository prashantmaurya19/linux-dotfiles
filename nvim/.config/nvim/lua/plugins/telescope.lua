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

      -- I want to search in hidden/dot files.
      table.insert(vimgrep_arguments, "--hidden")
      -- I don't want to search in the `.git` directory.
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/.git/*")
      table.insert(vimgrep_arguments, "!**/node_modules/*")
      table.insert(vimgrep_arguments, "!**/build/*")
      table.insert(vimgrep_arguments, "!**/dist/*")
      -- local select_one_or_multi = function(prompt_bufnr)
      -- 	local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
      -- 	local multi = picker:get_multi_selection()
      -- 	if not vim.tbl_isempty(multi) then
      -- 		require("telescope.actions").close(prompt_bufnr)
      -- 		for _, j in pairs(multi) do
      -- 			if j.path ~= nil then
      -- 				vim.cmd(string.format("%s %s", "edit", j.path))
      -- 			end
      -- 		end
      -- 	else
      -- 		require("telescope.actions").select_default(prompt_bufnr)
      -- 	end
      -- end

      telescope.setup({
        defaults = {
          -- `hidden = true` is not supported in text grep commands.
          vimgrep_arguments = vimgrep_arguments,
          path_display = { "truncate" },
        },
        file_ignore_patterns = {
          "node_modules",
          "build",
          "dist",
          "yarn.lock",
        },
        pickers = {
          layout_strategy = "vertical",
          layout_config = {
            height = 40,
            width = 0.8,
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
