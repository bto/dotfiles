# 他のディレクトリの .zsh?*/.zlogin を読み込む
for f in ~/.zsh?*/.zlogin; do
  source $f
done
