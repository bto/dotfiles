unsetopt NOMATCH

# 他のディレクトリの .zsh?*/.zshenv を読み込む
for f in ~/.zsh?*/.zshenv; do
  source $f
done
