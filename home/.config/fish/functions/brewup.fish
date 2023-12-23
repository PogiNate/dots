function brewup --wraps='=brew update && brew upgrade' --wraps='brew update && brew upgrade' --description 'alias brewup brew update && brew upgrade'
  brew update && brew upgrade $argv
        
end
