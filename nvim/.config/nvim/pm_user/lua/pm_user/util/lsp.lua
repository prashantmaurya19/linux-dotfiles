local export = {}
export.lsp_process = function()
	local lsp = vim.lsp.util.get_progress_messages()[1]
	if lsp then
		local name = lsp.name or ""
		local msg = lsp.message or ""
		local percentage = lsp.percentage or 0
		local title = lsp.title or ""
		return string.format(" %%<%s: %s %s (%s%%%%) ", name, title, msg, percentage)
	end
	return ""
end
return export
