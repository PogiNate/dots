# Defined via `source`
function gaa --wraps='git add all' --wraps='git add --all' --description 'alias gaa git add --all'
  git add --all $argv; 
end
