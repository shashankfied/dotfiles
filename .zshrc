HISTFILE=~/.histfile
HISTSIZE=50
SAVEHIST=50
bindkey '^a' beginning-of-line
bindkey '^l' end-of-line
PROMPT='%B%F{white}%n@%m%f %F{cyan}%~%f %b'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
