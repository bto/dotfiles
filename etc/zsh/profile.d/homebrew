if [ -d $(brew --prefix coreutils)/aliases ]; then
  source /usr/local/Cellar/coreutils/*/aliases
  alias ls='gls -F --color=auto'
fi

if [ -d /usr/local/Cellar/findutils ]; then
  alias find=gfind
  alias xargs=gxargs
fi

if [ -d /usr/local/Cellar/gnu-sed ]; then
  alias sed=gsed
fi
