# 他のディレクトリの .zsh?*/.zlogin を読み込む
for f in ~/.zsh?*/.zlogin; do
  if [ -f $d/.zlogin ]; then
    source $d/.zlogin
  fi
done
