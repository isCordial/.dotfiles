
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/regis/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/regis/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/regis/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/regis/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# aliases and colors
alias ls='ls -G'
#PROMPT="%F{2;115;126;107}%n@%m %~$ "
#PROMPT="%F{2;115;126;107}%n%f%F{red}@%f%F{blue}%m %F{green}%~$ %f"
PROMPT='%F{#31748f}%n%f%F{#eb6f92}@%f%F{#9ccfd8}%m %F{#f6c177}%~$ %f'
