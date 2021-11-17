"escape!
imap jk <Esc>

" Surround text with [[ ]] to make a wikilink
" NOTE: must use 'map' and not 'nmap'
exmap wiki surround [[ ]]
map [[ :wiki

" move lines
nmap - ddp
nmap _ ddkkp
