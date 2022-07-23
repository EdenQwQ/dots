if status is-interactive
    starship init fish | source
    # wal -R -q -n -e
    export GTK_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export QT_IM_MODULE=fcitx
    export GLFW_IM_MODULE=ibus
    export BAT_THEME="ansi"
    export ALL_PROXY="http://127.0.0.1:7890"
    export all_proxy="http://127.0.0.1:7890"
    export http_proxy="http://127.0.0.1:7890"
    export https_proxy="http://127.0.0.1:7890"
    export HTTP_PROXY="http://127.0.0.1:7890"
    export HTTPS_PROXY="http://127.0.0.1:7890"
    export QT_AUTO_SCREEN_SCALE_FACTOR=1
    export MOZ_ENABLE_WAYLAND=1
    export PATH="$HOME/.jakt/bin:$HOME/.cargo/bin:/usr/local/bin:$HOME/.local/bin:$PATH"
    set -Ux FZF_DEFAULT_OPTS "--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD"
    export FZF_DEFAULT_COMMAND='rg --hidden -l ""'
    zoxide init fish | source
    source ~/.config/fish/conf.d/mocha.fish
end
