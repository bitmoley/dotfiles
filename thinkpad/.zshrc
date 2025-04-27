HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/moley/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' enable git svn

setopt prompt_subst
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f '

# ALIASES

# PATH
export PATH=$PATH:/home/moley/.config/emacs/bin
