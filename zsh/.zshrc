# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt adam1
#
#setopt histignorealldups sharehistory

# spaceship prompt
source "$HOME/.zsh/spaceship/spaceship.zsh"



#git-prompt.sh
#autoload -Uz vcs_info # enable vcs_info
#precmd () { vcs_info } # always load before displaying the prompt
#zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)

#setopt PROMPT_SUBST
#PS1='%n@%m %F{green}%/%f$vcs_info_msg_0_ $ '

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#zoxide
source ~/plugin/zsh-autocomplete/zsh-autocomplete.plugin.zsh 
eval "$(zoxide init zsh)"

#atuin
eval "$(atuin init zsh)"

#Starship
#export STARSHIP_CONFIG=~/.config/starship/starship.toml
# eval "$(starship init zsh)"

#ruta de mis scripts
export PATH=$PATH:/home/xabi/documentos/scripts

#git-prompt.sh https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

#aliase
alias ll='ls -alF'
alias ls='ls -a'
alias la='ls -a'
alias l='ls -CF'
alias vim='nvim'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
alias ls='exa'
alias ddo='docker compose down'
alias dca='docker-compose -f docker-compose.yml -f docker-compose.caddy.yml up -d'
alias dup='docker compose up -d'
alias dlo='docker compose logs -f'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
