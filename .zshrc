##### STARTUP #####
export PATH=$PATH:/home/apollo/.local/bin
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/apollo/.zshrc'
autoload -Uz compinit
compinit

##### **CUSTOM** #####

##### ALIASES #####
fastfetch
alias 'cd'='z'
alias 'ff'='fastfetch'
alias 'logout'='hyprctl dispatch exit'
# alias ls='ls --color=auto'
alias yz='yazi'
alias ls='eza -lh --icons --git'
alias grep='grep --color=auto'
alias waybar-reload='pkill waybar && hyprctl dispatch exec waybar'
alias maintain='sh /home/apollo/.config/scripts/sysmaintenance.sh'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias inf='sudo informant'
alias arl='paru -Qqm'
alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
alias wttr='curl wttr.in/Sydney'
alias zed='zeditor'
alias clock='tty-clock -S -c -t'
alias wpsw='/home/apollo/wallpaper.sh'
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/apollo/.dart-cli-completion/zsh-config.zsh ]] && . /home/apollo/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
