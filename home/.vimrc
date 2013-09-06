set nocompatible
filetype plugin indent on 
set nu
syntax on
let mapleader=","
set incsearch
set hlsearch
nmap <Leader>t :TagbarToggle<CR>
nmap <slilent> <Leader>d <Plug>DashSearch
nmap <Leader>g :Gstatus<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
nnoremap <F5> :GundoToggle<CR>
hi CursorLine 	cterm=NONE ctermbg=235 guibg=#262626 
hi CursorColumn cterm=NONE ctermbg=235 guibg=#262626 
nnoremap <Leader>c :set cursorline! <CR>
nnoremap <Leader>cl :set cursorcolumn! <CR>
colorscheme jellybeans
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
set showmode
set foldmethod=syntax
"set nofoldenable
set foldlevel=1

"Backspace settings
set backspace=2
set backspace=indent,eol,start
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

"NERDTree Settings
map <Leader>n  :NERDTreeToggle<CR>
nmap <Leader>b :NERDTreeFromBookmark
nmap <Leader>mi :NERDTreeMirror<CR>

"Trying out pathogen
execute pathogen#infect()

"Persistent undo settings
set undofile
set undodir="/Users/natedickson/.vim/undofiles/"

let g:tagbar_type_xquery = {
    \ 'ctagstype' : 'xquery',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'v:variable',
        \ 'm:module',
    \ ]
    \ }

