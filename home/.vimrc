set nocompatible "Use Vim as VIM, not as vi
colorscheme jellybeans
filetype plugin indent on 
set nu
syntax on
let mapleader=","
set incsearch
set hlsearch
hi CursorLine 	cterm=NONE ctermbg=235 guibg=#262626 
hi CursorColumn cterm=NONE ctermbg=235 guibg=#262626 
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

"Language specific 
autocmd FileType xquery set commentstring=\(:%s:\)

"New Keymaps
nmap <slilent> <Leader>d <Plug>DashSearch
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>g :Gstatus<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
nnoremap <Leader>c :set cursorline! <CR>
nnoremap <Leader>cl :set cursorcolumn! <CR>
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
nnoremap <F5> :GundoToggle<CR>

"Folding
set foldmethod=manual
set foldlevel=1

"Statusline
set statusline=%t%m\ %r\ %=col:%c\ ln:%l\ lines:%L[%P]%h\ buffer:%n\ \ 
set laststatus=2

"Backspace settings
set backspace=2
set backspace=indent,eol,start

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

