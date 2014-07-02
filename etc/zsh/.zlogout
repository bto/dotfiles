# 他のディレクトリの .zsh?*/.zlogout を読み込む
for f in ~/.zsh?*/.zlogout; do
    if [ -f $f ]; then
        source $f
    fi
done
