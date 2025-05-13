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
        results = vim.PM.file.scandir(vim.fn.getcwd()),
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

M.find_tabs = function(opts)
  opts = opts or {}
  local tabs = {}
  local vim_util = require("pm_user.util.vim")
  for _, tabid in ipairs(vim.api.nvim_list_tabpages()) do
    local bufnr = vim_util.get_bufnr_by_tabid(tabid)
    table.insert(tabs, {
      id = tabid,
      name = vim.api.nvim_buf_get_name(bufnr),
      type = vim.bo[bufnr].filetype,
    })
  end

  local displayer = entry_display.create({
    separator = " | ",
    items = {
      { width = 2 },
      { remaining = true },
      { width = 4 },
    },
  })
  pickers
    .new(opts, {
      finder = finders.new_table({
        results = tabs,
        entry_maker = function(entry)
          -- print(vim.inspect(entry))
          return {
            value = entry,
            ordinal = entry.name,
            display = function()
              return displayer({
                { entry.id, "TelescopeResultsNumber" }, -- Data for first column
                { entry.name, "TelescopeResultsNormal" }, -- Data for second column
                { entry.type, "TelescopeResultsIdentifier" }, -- Data for second column
              })
            end,
          }
        end,
      }),
      sorter = conf.generic_sorter(opts),
      attach_mappings = function(bufnr, _)
        actions.select_default:replace(function()
          actions.close(bufnr)
          vim.cmd("tabn " .. actions_state.get_selected_entry().value.id)
          -- print(vim.inspect(actions_state.get_selected_entry().value))
        end)
        return true
      end,
    })
    :find()
end

return M
