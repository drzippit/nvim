return {
	"gbprod/yanky.nvim",
	dependencies = { "folke/snacks.nvim" },
	keys = {
		{
			"<leader>p",
			function()
				Snacks.picker.yanky()
			end,
			mode = { "n", "x" },
			desc = "Open Yank History",
		},
		{
			"p",
			"<Plug>(YankyPutAfter)",
			mode = { "n", "x" },
			desc = "Yanky Put After",
		},
		{
			"P",
			"<Plug>(YankyPutBefore)",
			mode = { "n", "x" },
			desc = "Yanky Put Before",
		},
		{
			"gp",
			"<Plug>(YankyGPutAfter)",
			mode = { "n", "x" },
			desc = "Yanky G Put Before",
		},
		{
			"gP",
			"<Plug>(YankyGPutBefore)",
			mode = { "n", "x" },
			desc = "Yanky G Put Before",
		},
		{
			"<c-p>",
			"<Plug>(YankyPreviousEntry)",
			mode = { "n" },
			desc = "Yanky Previous Entry",
		},
		{
			"<c-n>",
			"<Plug>(YankyNextEntry)",
			mode = { "n" },
			desc = "Yanky Next Entry",
		},
		{
			"<leader>yc",
			"<Plug>(YankyClearHistory)",
			mode = { "n", "x" },
			desc = "Yanky Clear History",
		},
	},
	config = function()
		require("yanky").setup({
			ring = {
				history_length = 100,
				storage = "shada",
				sync_with_numbered_registers = true,
				cancel_event = "update",
				ignore_registers = { "_" },
				update_register_on_cycle = false,
				permanent_wrapper = nil,
			},
			system_clipboard = {
				sync_with_ring = true,
			},
		})
	end,
}
