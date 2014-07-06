# ls には常に -F オプションをつける
# --color が使える環境では --color=auto をつける
if ls --color --color > /dev/null 2>&1; then
    alias ls='ls -F --color=auto';
else
    alias ls='ls -F';
fi

# csh ユーザ用
alias unsetenv='unset'
setenv()
{
    if [ $# -eq 0 ]; then
        printenv
    else
        export $1=$*[2,-1]
    fi
}

# M-h で起動するプログラム
alias run-help='man'

# 第2引数が実行可能だったら第1引数にエイリアスとして第2引数以降を登録する
xalias()
{
    if [ x`whence $2` != "x" ];then
        alias $1="$*[2,-1]"
    fi
}

# screen とか kterm のタイトルを変更する
title(){
    print -Pn "\e]0;$*\a"
}

# named directory を登録する
nd(){
    if [ $# -eq 0 ]; then
        name=`basename $PWD`
        dir=$PWD
    elif [ $# -eq 1 ]; then
        name=$1
        dir=$PWD
    else
        name=$1
        dir=$2
    fi

    eval $name=$dir
    : ~$name
}

# screen 用の chpwd()
# screen の時は chpwd(screen_chpwd) のようにして使う
screen_chpwd(){
    title "Y/m/d(D)c:s %n@%m [n] t [%~]"
}

if [ x$TERM = xscreen ]; then
    chpwd(){screen_chpwd}
    chpwd

    preexec() {
        # see [zsh-workers:13180]
        # http://www.zsh.org/mla/workers/2000/msg03993.html
        emulate -L zsh
        local -a cmd; cmd=(${(z)2})
        case $cmd[1] in
            fg)
                if (( $#cmd == 1 )); then
                    cmd=(builtin jobs -l %+)
                else
                    cmd=(builtin jobs -l $cmd[2])
                fi
                ;;
            %*)
                cmd=(builtin jobs -l $cmd[1])
                ;;
            cd)
                if (( $#cmd == 2)); then
                    cmd[1]=$cmd[2]
                fi
                ;&
            *)
                echo -n "k$cmd[1]:t\\"
                return
                ;;
        esac

        local -A jt; jt=(${(kv)jobtexts})

        $cmd >>(read num rest
            cmd=(${(z)${(e):-\$jt$num}})
            echo -n "k$cmd[1]:t\\") 2>/dev/null
    }
fi

symfony()
{(
    pwd=$PWD
    while true; do
        if [ -f symfony ]; then
            ./symfony $*
            return $?
        elif [ $PWD = / ]; then
            cd $pwd
            command symfony $*
            return $?
        else
            cd ..
        fi
    done
)}