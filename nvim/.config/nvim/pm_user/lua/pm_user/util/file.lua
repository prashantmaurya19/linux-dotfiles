-- class
---@class ParseFileObject
---@field directories table
---@field filename string

-- require("lfs")

local M = {}

function M.is_current_buf_modified()
  return vim.bo[vim.api.nvim_get_current_buf()].modified
end

---dir seperater function
---@param path string
---@return ParseFileObject
--#endregion
function M.parse(path)
  local dirs = { directories = {} }
  local last = 1
  for i = 1, #path, 1 do
    if string.sub(path, i, i) == vim.PM.g.path_sep then
      table.insert(dirs.directories, string.sub(path, last, i - 1))
      last = i + 1
    end
  end
  dirs.filename = string.sub(path, last, #path)
  return dirs
end

--- Defines a structure for user data.
--- @class ScanOptions
--- @field ignore_folders table<string> list of ignore folders

--- @param directory string
--- @param opt ScanOptions
--- @return table<string>
function M.scandir(directory, opt)
  local option = opt or {
    ignore_folders = { ".git", "target" },
  }

  local ignore_folders = ""
  for index, value in ipairs(option.ignore_folders) do
    ignore_folders = ignore_folders
      .. "-name "
      .. "'"
      -- .. directory
      -- .. "/"
      .. value
      .. "' "
      .. (index < #option.ignore_folders and "-o" or "")
      .. " "
  end

  local i, t, popen = 0, {}, io.popen
  -- this support in only for window's powershell yet

  local cmd = ""
  if vim.loop.os_uname().sysname == "Linux" then
    -- cmd = "find " .. directory .. "/ -type d"
    cmd = "find '" .. directory .. "' \\( " .. ignore_folders .. "\\) -prune -o -type d"
  else
    cmd = 'dir "' .. directory .. '" /s /b /w /ad'
  end
  local pfile = popen(cmd)
  if pfile ~= nil then
    for filename in pfile:lines() do
      if filename == directory then
	goto continue
      end
      i = i + 1
      t[i] = string.gsub(filename,directory,".")
        ::continue::
    end
    pfile:close()
  end
  return t
end

return M
