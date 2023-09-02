. ~/.config/fish/aliases.fish

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

if test -e ~/.config/fish/config.local.fish
    . ~/.config/fish/config.local.fish
end
