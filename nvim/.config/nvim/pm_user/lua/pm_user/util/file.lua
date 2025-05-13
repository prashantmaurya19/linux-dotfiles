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

function M.scandir(directory)
	local i, t, popen = 0, {}, io.popen
	-- this support in only for window's powershell yet
	local pfile = popen('dir "' .. directory .. '" /s /b /w /ad')
	if pfile ~= nil then
		for filename in pfile:lines() do
			i = i + 1
			t[i] = filename
		end
		pfile:close()
	end
	return t
end

return M
