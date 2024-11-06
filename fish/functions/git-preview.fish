function git-preview
    set log_line_to_sha "echo -n {} | grep -o '[a-f0-9]\{7\}'"

    git log \
        --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' \
        --abbrev-commit \
        --date=relative \
        --color=always |

        fzf \
            --ansi \
            --reverse \
            --preview="$log_line_to_sha | xargs -I % sh -c 'git show --color=always %'" \
            --header="enter: view, opt-c: copy commit sha" \
            --bind "enter:execute:$log_line_to_sha | xargs -I % sh -c 'git show --color=always %' | less -R" \
            --bind "alt-c:execute:$log_line_to_sha | pbcopy"
end