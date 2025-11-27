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

alias gp="git-preview"

alias c="clear"

alias k="kubectl"

alias tmux-copy-history='tmux capture-pane -S - -E - -p | awk '\''NF{last=NR} {lines[NR]=$0} END{for(i=1;i<=last;i++) print lines[i]}'\'' | pbcopy'
