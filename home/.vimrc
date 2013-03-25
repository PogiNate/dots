set nu
syntax on
let mapleader=","
set incsearch
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
hi CursorLine 	cterm=NONE ctermbg=235 guibg=#262626 
hi CursorColumn cterm=NONE ctermbg=235 guibg=#262626 
nnoremap <Leader>c :set cursorline! <CR>
nnoremap <Leader>cl :set cursorcolumn! <CR>
colorscheme Tomorrow-Night-Eighties
set tabstop=2
set shiftwidth=2
set expandtab
set guifont=Andale\ Mono:h14
set wrap
set linebreak
set nolist
set ttimeout
set ttimeoutlen=10
set autoindent
filetype plugin indent on

nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
