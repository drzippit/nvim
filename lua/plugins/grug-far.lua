return {
	"MagicDuck/grug-far.nvim",
	-- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
	-- additional lazy config to defer loading is not really needed...
	config = function()
		-- optional setup call to override plugin options
		-- alternatively you can set options with vim.g.grug_far = { ... }
		require("grug-far").setup({
			-- options, see Configuration section below
			-- there are no required options atm
		})
	end,
	keys = {
		{ "<leader>fr", ":GrugFar<CR>", desc = "Grug-Far (Find and Replace)", silent = true },
		{
			"<leader>fR",
			":lua require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>') } })<CR>",
			desc = "Grug-Far (Find and Replace) current word",
			silent = true,
		},
	},
}
