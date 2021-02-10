emulate -L zsh
setopt warn_create_global no_auto_pushd

# Display $1 in terminal title.
function set-term-title() {
    if [[ -t 1 ]]; then
        print -rn -- $'\e]0;'${(V)1}$'\a'
    elif [[ -w $TTY ]]; then
        print -rn -- $'\e]0;'${(V)1}$'\a' >$TTY
    fi
}

# When a command is running, display it in the terminal title.
function set-term-title-preexec() {
    if (( P9K_SSH )); then
        set-term-title ${(V%):-"%n@%m: %~ ❯ "}$1
    else
        set-term-title ${(V%):-"%~ ❯ "}$1
    fi
}

# When no command is running, display the current directory in the terminal title.
function set-term-title-precmd() {
    if (( P9K_SSH )); then
        set-term-title ${(V%):-"%n@%m: %~"}
    else
        set-term-title ${(V%):-"%~"}
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec set-term-title-preexec
add-zsh-hook precmd set-term-title-precmd
