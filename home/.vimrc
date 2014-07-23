set nocompatible "Use Vim as VIM, not as vi
colorscheme jellybeans
filetype plugin indent on 
set nu
syntax on
let mapleader=","
let maplocalleader = "\\"
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
set shiftround

"Save all files when vim loses focus
augroup autoSave
  autocmd!
  autocmd CursorHold,BufLeave,FocusLost * silent! wall
augroup END

" New Keymaps

" Normal Mode

nnoremap - ddp
nnoremap _ ddkkp
nnoremap <Leader>t :tabe<CR>
nnoremap <Leader>g :Gstatus<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
nnoremap <silent> <Leader>l :set cursorline! <CR>
nnoremap <silent> <Leader>c :set cursorcolumn! <CR>
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
nnoremap <leader>b :Gblame<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR> :echom ".vimrc reloaded."<CR>
nnoremap <silent> <leader>ev :split $MYVIMRC<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F7> :set wrap!<CR>
nnoremap <c-u> <esc>viwU

" Insert Mode
inoremap <c-u> <esc>viwUi
inoremap jk <esc>

"Tabularize Shortcuts
if exists(":Tabularize")
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a: :Tabularize /:<CR>
vnoremap <leader>a: :Tabularize /:<CR>
vnoremap <leader>at :Tabularize /\|<CR>
nnoremap <leader>at :Tabularize /\|<CR>
endif

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
set undodir=~/.vim/undofiles
set undolevels=1000
set undoreload=10000

"XQuery specific stuff
autocmd FileType xquery set commentstring=\(:%s:\)

let g:tagbar_type_xquery = {
    \ 'ctagstype' : 'xquery',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'v:variable',
        \ 'm:module',
    \ ]
    \ }

