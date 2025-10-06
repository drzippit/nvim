return {
	"nvim-neorg/neorg",
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	config = function()
		require("neorg").setup({
			load = {
				["core.esupports.metagen"] = {},
				["core.summary"] = {},
				["core.itero"] = {},
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						icon_preset = "diamond",
					},
				},
				["core.dirman"] = {
					config = {
						default_workspace = "notes",
						workspaces = {
							notes = "~/Documents/neorg/",
						},
					},
				},
			},
		})
	end,
	keys = {
		{
			"<leader>nj",
			"<cmd>Neorg journal<CR>",
			desc = "Neorg Journal",
		},
		{
			"<leader>ni",
			"<cmd>Neorg index<CR>",
			desc = "Neorg Index",
		},
		{
			"<leader>nt",
			"<cmd>Neorg toc<CR>",
			desc = "Neorg Table of Context",
		},
		{
			"<leader>nr",
			"<cmd>Neorg return<CR>",
			desc = "Neorg Return",
		},
	},
}
