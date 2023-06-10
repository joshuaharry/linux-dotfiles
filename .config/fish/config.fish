if status is-interactive
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
