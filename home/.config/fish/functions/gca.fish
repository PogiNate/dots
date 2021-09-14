# Defined via `source`
function gca --wraps='git commit --all' --description 'alias gca git commit --all'
  git commit --all $argv; 
end
