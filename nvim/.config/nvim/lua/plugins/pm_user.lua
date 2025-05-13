return {
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	name = "pm_user",
	dir = vim.fn.expand("~/.config/nvim/pm_user/"),
	priority = 10000,
	config = function()
		require("pm_user.clr").setup({
			emerald = "#24feaf",
			blue = "#4268ff",
			sky = "#4de7ff",
			turquoise = "#2bc5a8",
			purple = "#732370",
			violet = "#8000FF",
			--for transperant background
			bg="NONE",
		})
		require("pm_user.colorscheme")
		require("pm_user").setup()
	end,
}
