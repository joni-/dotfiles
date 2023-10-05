if type -q bat
  alias cat=bat
end

if type -q batcat
  alias cat=batcat
end

alias preview="fd --type f | fzf --preview 'bat --color \"always\" {}'"
alias help=tldr

alias g="git"
alias gco="git commit"
alias gcoan="git commit --amend --no-edit"
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gds="git diff --staged"

alias c="clear"

