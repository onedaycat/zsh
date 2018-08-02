

function title() {

    a=${(V)1//\%/\%\%}

    a=$(print -Pn "%40>...>$a" | tr -d "\n")

    case $TERM in
    screen)
        print -Pn "\ek$a:$3\e\\"
        ;;
    xterm*|rxvt)
        print -Pn "\e]2;$2\a"
        ;;
    esac
}

