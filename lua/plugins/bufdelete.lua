return {
	"famiu/bufdelete.nvim",
	lazy = true,
	keys = {
		{ "<leader>bd", ":Bdelete<CR>", mode = { "n", "o", "x" }, desc = "Buffer Delete" },
		{ "<leader>bw", ":Bwipeout<CR>", mode = { "n", "o", "x" }, desc = "Buffer Wipeout" },
	},
}
