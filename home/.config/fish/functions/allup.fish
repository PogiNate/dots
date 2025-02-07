function allup --wraps='sudo apt update && sudo apt -y upgrade' --description 'alias allup sudo apt update && sudo apt -y upgrade'
  sudo apt update && sudo apt -y upgrade $argv
        
end
