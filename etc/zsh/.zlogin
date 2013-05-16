# profile.d のファイルの読み込み
for f in $ZDOTDIR/profile.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done

# 他のディレクトリの .zsh?*/.zlogin を読み込む
for f in ~/.zsh?*/.zlogin; do
  if [ -f $d/.zlogin ]; then
    source $d/.zlogin
  fi
done

# 他のディレクトリの .zsh?*/profile.d を読み込む
for f in ~/.zsh?*/profile.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done
