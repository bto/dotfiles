#
# いろいろな環境変数の設定
#

# PATH の設定
PATH=
add_env PATH "${HOME}/bin" "${HOME}/sbin"
add_env PATH "${HOME}/opt/*/bin" "${HOME}/opt/*/sbin"
add_env PATH "/usr/local/bin" "/usr/local/sbin"
add_env PATH "/usr/local/*/bin" "/usr/local/*/sbin"
add_env PATH "/opt/local/bin" "/opt/local/sbin"
add_env PATH "/usr/local/Cellar/*/*/libexec/gnubin"
add_env PATH "/opt/local/*/bin" "/opt/local/*/sbin"
add_env PATH "/opt/*/bin" "/opt/*/sbin"
add_env PATH "/sw/bin" "/sw/sbin"
add_env PATH "/usr/ucb"
add_env PATH "/bin" "/sbin"
add_env PATH "/usr/bin" "/usr/sbin" "/usr/*/bin" "/usr/*/sbin"
clean_env PATH
export PATH

# MANPATH の設定
MANPATH=
add_env MANPATH "${HOME}/man" "${HOME}/opt/*/man/ja" "${HOME}/opt/*/man" "${HOME}/opt/*/share/man"
add_env MANPATH "/usr/local/man/ja" "/usr/local/man" "/usr/local/share/man"
add_env MANPATH "/usr/local/*/man/ja" "/usr/local/*/man" "/usr/local/*/share/man"
add_env MANPATH "/opt/local/man/ja" "/opt/local/man" "/opt/local/share/man"
add_env MANPATH "/opt/local/*/man/ja" "/opt/local/*/man" "/opt/local/*/share/man"
add_env MANPATH "/opt/*/man/ja" "/opt/*/man" "/opt/*/share/man"
add_env MANPATH "/sw/share/man"
add_env MANPATH "/usr/share/jman"
add_env MANPATH "/usr/*/man/ja"
add_env MANPATH "/usr/*/man"
add_env MANPATH "/usr/man/ja" "/usr/man"
clean_env MANPATH
export MANPATH

# LD_LIBRARY_PATH の設定
LD_LIBRARY_PATH=
add_env LD_LIBRARY_PATH "${HOME}/lib" "${HOME}/opt/*/lib"
add_env LD_LIBRARY_PATH "/usr/local/lib" "/usr/local/*/lib"
add_env LD_LIBRARY_PATH "/opt/local/lib" "/opt/local/*/lib"
add_env LD_LIBRARY_PATH "/opt/*/lib"
add_env LD_LIBRARY_PATH "/sw/lib"
add_env LD_LIBRARY_PATH "/lib"
add_env LD_LIBRARY_PATH "/usr/lib"
add_env LD_LIBRARY_PATH "/usr/*/lib"
clean_env  LD_LIBRARY_PATH
export LD_LIBRARY_PATH

# LIBRARY_PATH の設定
LIBRARY_PATH=
add_env LIBRARY_PATH "${HOME}/lib" "${HOME}/opt/*/lib"
add_env LIBRARY_PATH "/usr/local/lib" "/usr/local/*/lib"
add_env LIBRARY_PATH "/opt/local/lib" "/opt/local/*/lib"
add_env LIBRARY_PATH "/opt/*/lib"
add_env LIBRARY_PATH "/sw/lib"
add_env LIBRARY_PATH "/lib"
add_env LIBRARY_PATH "/usr/lib"
add_env LIBRARY_PATH "/usr/*/lib"
clean_env  LIBRARY_PATH
export LIBRARY_PATH

# C_INCLUDE_PATH の設定
C_INCLUDE_PATH=
add_env C_INCLUDE_PATH "${HOME}/include" "${HOME}/opt/*/include"
add_env C_INCLUDE_PATH "/usr/local/include" "/usr/local/*/include"
add_env C_INCLUDE_PATH "/opt/local/include" "/opt/local/*/include"
add_env C_INCLUDE_PATH "/opt/*/include"
add_env C_INCLUDE_PATH "/sw/include"
add_env C_INCLUDE_PATH "/usr/include"
add_env C_INCLUDE_PATH "/usr/*/include"
clean_env  C_INCLUDE_PATH
export C_INCLUDE_PATH

# PKG_CONFIG_PATH の設定
PKG_CONFIG_PATH=
add_env PKG_CONFIG_PATH "${HOME}/lib/pkgconfig" "${HOME}/opt/*/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/usr/local/lib/pkgconfig" "/usr/local/*/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/opt/local/lib/pkgconfig" "/opt/local/*/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/opt/*/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/sw/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/usr/lib/pkgconfig"
add_env PKG_CONFIG_PATH "/usr/*/lib/pkgconfig"
clean_env  PKG_CONFIG_PATH
export PKG_CONFIG_PATH

# ロケールの設定
LANG=ja_JP.UTF-8
export LANG

# ページャとエディタの設定
VISUAL=vi
EDITOR=vi
PAGER=more
type less > /dev/null 2>&1 && PAGER=less
export VISUAL EDITOR PAGER

# ディレクトリスタックのサイズ
DIRSTACKSIZE=20
export DIRSTACKSIZE

# ヒストリ
HISTFILE="$HOME/.history"
HISTIGNORE='\&:fg:bg:ls:pwd:cd ..:cd ~-:cd -:cd:jobs:set -x:ls -l:ls -l'
HISTSIZE=1048576
HISTFILESIZE=${HISTSIZE}
SAVEHIST=${HISTSIZE}
HISTCONTROL=ignoredups
export HISTFILE HISTIGNORE HISTSIZE HISTFILESIZE SAVEHIST HISTCONTROL

# デフォルトでは単語の区切りがかなり腐ってる
# see. http://www.zsh.org/mla/users/2000/msg00539.html
WORDCHARS=""
export WORDCHARS

# REALNAME の設定
# Mutt とか Pine で有効らしい
#REALNAME=`grep $USER /etc/passwd | awk -F: '{ print $5 }' 2>/dev/null`
#export REALNAME

# その他
export HOST
limit coredumpsize 0
