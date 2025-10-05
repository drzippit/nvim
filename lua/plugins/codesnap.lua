return {
	"mistricky/codesnap.nvim",
	build = "build",
	keys = {
		{ "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
		{ "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
	},
	lazy = true,
	config = function()
		require("codesnap").setup({
			watermark = "",
			bg_padding = 10,
		})
	end,
}
