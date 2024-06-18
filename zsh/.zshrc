#!/usr/bin/env zsh
## .zshrc :: Z shell run commands

#
## Z shell :: Run commands :: Includes
source ~/.config/zsh/zshrc

# Variable modification :: Z shell :: Run commands :: Include files
zsh_rc_if=($ZSH/run_commands.d/*.zshrc)

# Validation :: Determine if number of run commands include files exceeds 0
if [ ${#zsh_rc_if[@]} -gt 0 ]; then
    # Action :: Loop over Z shell run commands include files
    foreach zshrc (`echo ${zsh_rc_if[@]} | sort`)
        # Action :: Include Z shell run commands include files
        source "$zshrc"
    end
fi

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

eval "$(starship init zsh)"

# vim: set ft=zsh
