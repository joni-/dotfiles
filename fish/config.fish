. ~/.config/fish/aliases.fish

for fn_file in ~/.config/fish/functions/*.fish
    . $fn_file
end

fish_add_path $HOME/.local/bin/
fish_add_path /usr/local/opt/libpq/bin/
fish_add_path $HOME/.cargo/bin
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/Library/Python/3.9/bin/
fish_add_path $HOME/.docker/bin
set -x NVM_DIR $HOME/.nvm
set -x EDITOR vi
set -x SAM_CLI_TELEMETRY 0
set -x PYENV_ROOT $HOME/.pyenv
set -x HOMEBREW_NO_ANALYTICS 1

# fish bindings for fzf (ctrl+t, ctrl+r, opt+c)
# https://github.com/junegunn/fzf?tab=readme-ov-file#key-bindings-for-command-line
fzf --fish | source

# Preview file content using bat (https://github.com/sharkdp/bat)
set -x FZF_CTRL_T_OPTS "
  --walker-skip .git,node_modules,target,build
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

if test (uname) = Linux
    setxkbmap -option caps:escape
end

if test -e ~/.config/fish/config.local.fish
    . ~/.config/fish/config.local.fish
end
