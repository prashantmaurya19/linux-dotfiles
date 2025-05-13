local M = {}

---@param str string
---@param delimiter string
---@return table<string>
function M.split_string(str, delimiter)
	local result = {}
	local start = 1
	while true do
		local match = string.match(str, delimiter, start)
		if not match then
			table.insert(result, string.sub(str, start))

			break
		end
		table.insert(result, string.sub(str, start, match - 1))
		start = match + string.len(delimiter)
	end

	return result
end

---@param join_sep string
---@param strs table<string>
---@return string
function M.join(join_sep, strs)
	local rnt = ""
	for i, value in ipairs(strs) do
		rnt = rnt .. value .. (#strs == i and "" or join_sep)
	end
	return rnt
end

function M.truncate(content, fixed_length)
	-- Set 'fixed_length' to false if not provided.
	fixed_length = fixed_length or false

	-- Set the fixed completion window width.
	if fixed_length then
		vim.o.pumwidth = fixed_length
	end

	-- Get the width of the current window.
	local win_width = vim.api.nvim_win_get_width(0)

	-- Truncate the completion entry text if it's longer than the
	-- max content width. We subtract 3 from the max content width
	-- to account for the "..." that will be appended to it.
	local max_content_width = fixed_length and fixed_length - 10 or math.floor(win_width * 0.2)
	if #content > max_content_width then
		return vim.fn.strcharpart(content, 0, max_content_width - 2) .. ".."
	else
		return content .. (" "):rep(max_content_width - #content)
	end
end

return M
