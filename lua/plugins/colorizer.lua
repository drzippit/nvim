return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	config = function()
		require("colorizer").setup({
			"*", -- Highlight all files, but customize some others.
			"!terraform_vars", -- Exclude vim from highlighting.
			"!terraform", -- Exclude vim from highlighting.
		})
	end,
	keys = {
		{ "<leader>tc", ":ColorizerToggle<CR>", mode = { "n", "o", "x" }, desc = "Toggle Colorizer" },
	},
}
