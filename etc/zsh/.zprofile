# 他のディレクトリの .zsh?*/.zprofile を読み込む
for f in ~/.zsh?*/.zprofile; do
  if [ -f $d/.zprofile ]; then
    source $d/.zprofile
  fi
done
