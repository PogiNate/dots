function! mpc#DisplayList()
  let cmd = "mpc --format '%position% %artist% / %album% / %title%' playlist"
  let playlist = split (system(cmd), '\n')

  for track in playlist
    if(playlist[0] == track)
      execute "normal! 1GdGI" . track
    else
      call append(line('$'), track)
    endif
  endfor
endfunction

function! mpc#PlaySong(num)

  let song = split(getline(a:num), " ")
  let results = split(system("mpc --format '%title% (%artist%)' play " . song[0]), "\n")
  let message = '[mpc] Now Playing: ' . results[0]
  echomsg message
endfunction
