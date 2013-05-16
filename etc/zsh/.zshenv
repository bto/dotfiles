unsetopt NOMATCH

# 他のディレクトリの .zsh?*/.zshenv を読み込む
for f in ~/.zsh?*/.zshenv; do
  if [ -f $d/.zshenv ]; then
    source $d/.zshenv
  fi
done
