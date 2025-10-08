local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local actions_state = require("telescope.actions.state")
local entry_display = require("telescope.pickers.entry_display")

local M = {}

M.find_folders = function(opts)
  opts = opts or {}
  pickers
    .new(opts, {
      finder = finders.new_table({
        results = vim.PM.file.scandir(
          vim.fn.getcwd(),
          { ignore_folders = { ".git", "target", ".mvn", ".settings", "node_modules", ".yarn", "dist" } }
        ),
      }),
      sorter = conf.generic_sorter(opts),
      attach_mappings = function(bufnr, _)
        actions.select_default:replace(function()
          actions.close(bufnr)
          vim.cmd("Ex " .. actions_state.get_selected_entry()[1])
        end)
        return true
      end,
    })
    :find()
end

return M
