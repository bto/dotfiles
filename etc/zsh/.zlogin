# 他のディレクトリの .zsh?*/.zlogin を読み込む
for f in ~/.zsh?*/.zlogin; do
    if [ -f $f ]; then
        source $f
    fi
done
