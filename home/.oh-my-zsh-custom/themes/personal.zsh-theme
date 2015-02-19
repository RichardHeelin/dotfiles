# Colors: $fg, $fg_bold, $bg => cyan, white, yellow, magenta, black, blue, red, default, grey, green

function parse_git_branch {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return
    fi

    `git update-index --really-refresh 2>&1 1>/dev/null`

    ref=$(git symbolic-ref HEAD 2>/dev/null) || \
    ref=$(echo -n "%{$fg_bold[grey]%}" && git describe --exact-match --abbrev=0 --tags 2>/dev/null) || \
    ref=$(echo -n "%{$fg_bold[grey]%}" && git rev-parse --short HEAD 2>/dev/null)
    ref=${ref#refs/heads/}

    if ! git diff-files --quiet 2>/dev/null; then
        background="$bg[red]"
    elif ! git diff-index --quiet --cached HEAD 2>/dev/null; then
        background="$bg[magenta]"
    else
        background="$bg[green]"
    fi

    case "$ref" in
        master)
            color="$fg_bold[green]" ;;
        develop)
            color="$fg_bold[yellow]" ;;
        QA)
            color="$fg_bold[black]" ;;
        *)
            color="$fg_bold[default]" ;;
    esac

    echo -n " %{$fg_bold[default]%}%{$background%}[%{$color%}$ref%{$fg_bold[default]%}]%{$reset_color%}"
}

PROMPT='%{$fg_bold[green]%}%D{%R}%{$reset_color%} %{$fg_bold[blue]%}%1~%{$reset_color%}$(parse_git_branch)%(!:#:$) '
RPROMPT='%(?:%{$fg_bold[green]%}✔:%{$fg_bold[red]%}✘)%{$reset_color%}'
