set nocompatible "Use Vim as VIM, not as vi
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
set pastetoggle =<F2>
let g:airline_powerline_fonts = 1

"Save all files when vim loses focus
augroup autoSave
  autocmd!
  autocmd CursorHold,BufLeave,FocusLost * silent! wall
augroup END

" New Keymaps
" Easily move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Easily move between tabs
nnoremap H gT
nnoremap L gt
" Normal Mode
nnoremap - ddp
nnoremap _ ddkkp
nnoremap <Leader>t :tabe<CR>
nnoremap <Leader>g :Gstatus<CR>
nnoremap <silent> <leader>s :<C-u>nohlsearch<CR>
nnoremap <silent> <Leader>l :set cursorline! <CR>
nnoremap <silent> <Leader>c :set cursorcolumn! <CR>
nnoremap <silent> <leader>b :Gblame<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR> :echom ".vimrc reloaded."<CR>
nnoremap <silent> <leader>ev :split $MYVIMRC<CR>
"Using :noremap doesn't work with plug mappings. Who knew?
nmap <silent> <leader>d <Plug>DashSearch
nnoremap <silent> <F5> :GundoToggle<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F7> :set wrap!<CR>
nnoremap <c-u> <esc>viwU
nnoremap <silent> <leader>sw :%s/\s\+$//<CR>
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
execute pathogen#helptags()

"Persistent undo settings
set undofile
set undodir=~/.vim/undofiles
set undolevels=1000
set undoreload=10000


"color scheme. Moved to the end to be called 
"After pathogen adds the colorschemes.
colorscheme jellybeans
