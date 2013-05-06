set nocompatible
filetype plugin indent on 
set nu
syntax on
let mapleader=","
set incsearch
set hlsearch
nmap <Leader>t :TagbarToggle<CR>
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
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

"NERDTree Settings
map <Leader>n  :NERDTreeToggle<CR>
nmap <Leader>b :NERDTreeFromBookmark
nmap <Leader>m :NERDTreeMirror<CR>
"Trying out pathogen
execute pathogen#infect()

let g:tagbar_type_xquery = {
    \ 'ctagstype' : 'xquery',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'v:variable',
        \ 'm:module',
    \ ]
    \ }

" Dropping vundle for now
" vundle settings
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
"We'll go ahead and let Vundle handle its own self.
" Bundle 'gmarik/vundle'

"My Bundles below:
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'
" Bundle 'tpope/vim-commentary'
