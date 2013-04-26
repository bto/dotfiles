# 他のディレクトリの .zsh?*/.zlogout を読み込む
for f in ~/.zsh?*/.zlogout; do
  if [ -f $d/.zlogout ]; then
    source $d/.zlogout
  fi
done
