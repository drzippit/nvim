return {
	"rose-pine/neovim",
	name = "rose-pine",
	version = false,
	enabled = true,
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd.colorscheme("rose-pine")
	end,
}
