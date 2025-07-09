vim.g.mapleader = ","

require("config.lazy")

--- Indentation ---
vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

--- Hard Mode ---
vim.keymap.set("i", "<Up>", ":echoe 'LOL'<CR>")
vim.keymap.set("i", "<Down>", ":echoe 'LOL'<CR>")
vim.keymap.set("i", "<Left>", ":echoe 'LOL'<CR>")
vim.keymap.set("i", "<Right>", ":echoe 'LOL'<CR>")

vim.keymap.set("n", "<Up>", ":echoe 'LOL'<CR>")
vim.keymap.set("n", "<Down>", ":echoe 'LOL'<CR>")
vim.keymap.set("n", "<Left>", ":echoe 'LOL'<CR>")
vim.keymap.set("n", "<Right>", ":echoe 'LOL'<CR>")

vim.keymap.set("v", "<Up>", ":echoe 'LOL'<CR>")
vim.keymap.set("v", "<Down>", ":echoe 'LOL'<CR>")
vim.keymap.set("v", "<Left>", ":echoe 'LOL'<CR>")
vim.keymap.set("v", "<Right>", ":echoe 'LOL'<CR>")

--- Telescope ---
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('telescope').setup {
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "ignore_case",
		}
	}
}

require('telescope').load_extension('fzf')
