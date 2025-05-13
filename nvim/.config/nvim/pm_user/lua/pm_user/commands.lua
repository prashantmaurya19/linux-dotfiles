-- vim.api.nvim_create_user_command("PSaveSession",function (opt)
-- 	local path = opt.args
-- 	if path=="." then
-- 		path = vim.fn.getcwd()
-- 	end
-- 	path = path:gsub("~","")
-- 	path = path:gsub("["..vim.PM.g.path_sep.."]+",vim.PM.g.path_sep)
-- 	if path:sub(#path,#path)==vim.PM.g.path_sep then
-- 		path = path:sub(1,#path-1)
-- 	end
-- 	-- vim.cmd[[mksession vim.PM.text.join(vim.PM.g.path_sep,{path,"session.vim"})]]
-- 	print(vim.PM.text.join(vim.PM.g.path_sep,{path,"session.vim"}))
-- end,{nargs=1,complete="dir"})




