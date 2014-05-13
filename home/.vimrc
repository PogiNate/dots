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
set wrap
set linebreak
set nolist
set ttimeout
set ttimeoutlen=10
set autoindent
set showmode

"Save all files when vim loses focus
autocmd BufLeave,FocusLost * silent! wall

"Language specific 
autocmd FileType xquery set commentstring=\(:%s:\)

"New Keymaps
nmap <slilent> <Leader>d <Plug>DashSearch
nmap <Leader>t :tabe<CR>
nmap <Leader>g :Gstatus<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
nnoremap <Leader>c :set cursorline! <CR>
nnoremap <Leader>cl :set cursorcolumn! <CR>
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
nnoremap <leader>b :Gblame<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :TagbarToggle<CR>

"Folding
set foldmethod=manual
set foldlevel=1

"Statusline
set statusline=%t%m\ %r\ %=col:%c\ ln:%l\ lines:%L[%P]%h\ buffer:%n\ \ 
set laststatus=2

"Backspace settings
set backspace=2
set backspace=indent,eol,start

"Wildignore stuff

set wildignore=node_modules/*
"NERDTree Settings
let NERDTreeHijackNetrw=1
map <Leader>n  :NERDTreeToggle<CR>
" nmap <Leader>b :NERDTreeFromBookmark
nmap <Leader>mi :NERDTreeMirror<CR>

"Pathogen
execute pathogen#infect()

"Persistent undo settings
set undofile
set undodir="/Users/natedickson/.vim/undofiles/"

"XQuery specific stuff
let g:tagbar_type_xquery = {
    \ 'ctagstype' : 'xquery',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'v:variable',
        \ 'm:module',
    \ ]
    \ }

