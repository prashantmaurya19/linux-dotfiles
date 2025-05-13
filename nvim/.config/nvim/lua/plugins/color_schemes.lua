return {
	{ priority = 20000, "https://github.com/folke/tokyonight.nvim" },
	{ priority = 20000, "kepano/flexoki-neovim" },
	{
		priority = 20000,
		"Mofiqul/dracula.nvim",
		config = function()
			local dracula = require("dracula")
			dracula.setup({
				transparent_bg = true,
			})
		end,
	},
	{ priority = 20000, "pineapplegiant/spaceduck", branch = "main" },
	{
		priority = 20000,
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		config = function()
			vim.g.moonflyItalics = false
			vim.g.moonflyTransparent = true
		end,
	},
	{
		priority = 20000,
		"zootedb0t/citruszest.nvim",
		config = function()
			require("citruszest").setup({
				option = {
					transparent = true, -- Enable/Disable transparency
					bold = true,
					italic = false,
				},
			})
		end,
	},
}
