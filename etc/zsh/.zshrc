# rc.d のファイルの読み込み
for f in $ZDOTDIR/rc.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done

# 他のディレクトリの .zsh?*/.zshrc を読み込む
for f in ~/.zsh?*/.zshrc; do
  if [ -f $f ]; then
    source $f
  fi
done

# 他のディレクトリの .zsh?*/rc.d を読み込む
for f in ~/.zsh?*/rc.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done
