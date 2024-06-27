require('alias')

vim.g.mapleader = " "

-- NeoTree
nm('<leader>e', ':Neotree float focus<CR>')
nm('<leader>o', ':Neotree float git_status<CR>')

-- Other
im('jk', '<ESC>')
nm(',<leader>', ':nohlsearch<CR>')

-- Lsp
vim.keymap.set('n', '<leader>lD', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>d', vim.diagnostic.disable) -- disable view errors
vim.keymap.set('n', '<leader>D', vim.diagnostic.enable)  -- enable view errors
-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {noremap = true, silent = true})
