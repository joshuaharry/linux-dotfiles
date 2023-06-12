if status is-interactive
    set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
    set -x LESS_TERMCAP_md (printf "\033[01;31m")  
    set -x LESS_TERMCAP_me (printf "\033[0m")  
    set -x LESS_TERMCAP_se (printf "\033[0m")  
    set -x LESS_TERMCAP_so (printf "\033[01;44;33m")  
    set -x LESS_TERMCAP_ue (printf "\033[0m")  
    set -x LESS_TERMCAP_us (printf "\033[01;32m")
    fish_vi_key_bindings
    alias aliases='nvim ~/.config/fish/config.fish'
    alias c='clear -x'
    alias clear='clear -x'
    alias dots='nvim ~/.config/misc/dotfiles.dots'
    alias e='exit'
    alias fishrc='nvim ~/.config/fish/config.fish'
    alias fixkeys='setxkbmap -option caps:swapescape -option ctrl:ralt_rctrl'
    alias gp='cd (cat ~/.config/misc/current_project)'
    alias l='exa -l'
    alias lh='exa -l -a'
    alias ls='exa -l'
    alias reload='source ~/.config/fish/config.fish'
    alias sc='pwd > ~/.config/misc/current_project'
    alias update='paru -Syyu'
    alias v='nvim'
    alias vi='nvim'
    alias vim='nvim'
    alias vimrc='nvim ~/.config/nvim/init.lua'
    direnv hook fish | source
    gp
end
