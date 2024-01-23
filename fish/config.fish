if status is-interactive
    # Commands to run in interactive sessions can go here
end

set figh_greeting ""

starship init fish | source
macchina

source /home/tai/.config/fish/aliases.fish
source /home/tai/.config/fish/functions/fish_greeting.fish
source /home/tai/.config/fish/theme.fish

# nvm
# set NVM_DIR "$HOME/.nvm"
# source /usr/share/nvm/nvm.sh
# source /usr/share/nvm/bash_completion
# source /usr/share/nvm/install-nvm-exec

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set --export MANPAGER "nvim +Man!"
