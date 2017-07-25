__dir__=$(dirname ${(%):-%N})

for d in $DOTFILES_DIR/modules/*/functions(N-/); do
    fpath=($d $fpath)
    for f in $d/*(N-.); do
        autoload -U $(basename $f)
    done
done

_sources $__dir__/rc.d/*.zsh(N-.)
_sources $DOTFILES_DIR/modules/*/zsh.rc(N-.)
_sources ~/.zsh?*/.zshrc(N-.)
_sources ~/.zsh?*/rc.d/*.zsh(N-.)
