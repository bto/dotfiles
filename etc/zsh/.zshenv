unsetopt NOMATCH

# profile.d のファイルの読み込み
for f in $ZDOTDIR/profile.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done

# 他のディレクトリの .zsh?*/.zshenv を読み込む
for f in ~/.zsh?*/.zshenv; do
  if [ -f $d/.zshenv ]; then
    source $d/.zshenv
  fi
done

# 他のディレクトリの .zsh?*/profile.d を読み込む
for f in ~/.zsh?*/profile.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done
