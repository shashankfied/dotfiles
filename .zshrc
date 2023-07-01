HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
bindkey '^a' beginning-of-line
bindkey '^l' end-of-line
PROMPT='%B%F{white}%n@%m%f %F{cyan}%~%f %b'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias clean='sudo pacman -Rns $(pacman -Qdtq)'
alias sync='sudo reflector --country india --age 12 --latest 3 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'
alias sync-show='cat /etc/pacman.d/mirrorlist'
alias screenshot='grim -g "$(slurp)"'
record() {
    #Open the first terminal with ffplay in floating mode
    swaymsg "exec foot -t 'ffplay' -e sh -c 'ffplay -fflags +nobuffer /dev/video0'"

    # Open the second terminal with wf-recorder
    foot -e sh -c 'wf-recorder -a'
}
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi
