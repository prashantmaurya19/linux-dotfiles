return {
	"nvim-tree/nvim-web-devicons",
	{
		"https://github.com/tpope/vim-commentary",
		config = function()
			vim.api.nvim_create_autocmd("FileType", {
				desc = "set indent for dart files",

				callback = function(opts)
					local forward_slash_comment_filext = {
						dart = true,
						lisp = true,
					}
					local star_comment_filext = {
						text = true,
					}
					if forward_slash_comment_filext[vim.bo[opts.buf].filetype] then
						vim.opt_local.commentstring = "//%s"
					elseif star_comment_filext[vim.bo[opts.buf].filetype] then
						vim.opt_local.commentstring = "#%s"
					end
				end,
			})
		end,
	},
	"ryanoasis/vim-devicons",
	{
		"folke/lsp-colors.nvim",
		config = function()
			require("lsp-colors").setup({
				Error = "#db4b4b",
				Warning = "#e0af68",
				Information = "#0db9d7",
				Hint = "#10B981",
			})
		end,
	},
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{
		"alvarosevilla95/luatab.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("luatab").setup({})
		end,
	},
}
