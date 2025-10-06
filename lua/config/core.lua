-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- creates a swapfile
vim.o.swapfile = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 15
--
-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- set number column width to 2 {default 4}
vim.o.numberwidth = 4
-- the number of spaces inserted for each indentation
vim.o.shiftwidth = 4
-- insert n spaces for a tab
vim.o.tabstop = 4
-- Number of spaces that a tab counts for while performing editing operations
vim.o.softtabstop = 4
-- convert tabs to spaces
vim.o.expandtab = true
-- highlight the current line
vim.o.cursorline = false

-- Set conceal level to hide elements when not on it with the cursor
vim.o.conceallevel = 3

-- Set fold level to 99 so it doesn't fold anything automatically
vim.o.foldlevel = 99
