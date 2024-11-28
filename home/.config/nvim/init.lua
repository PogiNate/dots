-- leader
vim.g.mapleader = ','
vim.api.nvim_set_keymap('n','<Leader>w',':w<CR>',{noremap=true, silent=true})
-- Basics
vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.termguicolors = true

--Syntax Stuff
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')


-- Normal Mode Mappings
vim.keymap.set('n', '-', 'ddp')
vim.keymap.set('n', '_', 'ddkkp')
vim.keymap.set('n', '<Leader>s',':luafile $MYVIMRC<CR>')
-- Insert Mode Mappings
vim.keymap.set('i','jk','<esc>')
