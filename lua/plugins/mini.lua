return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.icons").setup()
		require("mini.diff").setup({
			view = {
				style = "sign",
				signs = {
					add = "+",
					change = "~",
					delete = "-",
				},
			},
		})
		require("mini.git").setup()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()
		require("mini.pairs").setup()
		require("mini.move").setup()
		require("mini.basics").setup({
			mappings = {
				option_toggle_prefix = [[]],
			},
		})
		require("mini.cursorword").setup()
		require("mini.tabline").setup()
		require("mini.statusline").setup()
	end,
}
