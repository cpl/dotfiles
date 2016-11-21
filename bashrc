# .bashrc

export PS1="\[$(tput setaf 1)\][\u@\h \W]\\$ \[$(tput sgr0)\]"

# USE AWESOME PROMPT!
source $HOME/.bash_extras/dircolors
source $HOME/.bash_extras/exports
source $HOME/.bash_extras/aliases
source $HOME/.bash_extras/prompt
source $HOME/.bash_extras/cdvar
source $HOME/.bash_extras/paths

# ON OPEN
wisecow
