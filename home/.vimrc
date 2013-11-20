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

"Selecta as a Fuzzy file finder!
" Run a given vim command on the results of fuzzy selecting from a given shell
" " command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    silent let selection = system(a:choice_command . " | selecta " .a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise
    "there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
  endfunction

" Find all files in all non-dot directories
" starting in the working directory.
" Fuzzy select one of those. Open the selected
" file with :e.
nnoremap <leader>f :call SelectaCommand("find * -type f", "", ":e")<cr>

