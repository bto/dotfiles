# 他のディレクトリの .zsh?*/.zlogout を読み込む
for f in ~/.zsh?*/.zlogout; do
  source $f
done
