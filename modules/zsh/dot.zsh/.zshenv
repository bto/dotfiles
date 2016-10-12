__dir__=$(dirname ${(%):-%N})

source $__dir__/var/init.zsh

functions_dir=$__dir__/functions
fpath=($fpath $functions_dir(N-/))
for f in $functions_dir/*; do
    autoload -U $(basename $f)
done

for f in ~/.zsh?*/.zshenv(N-.); do
    source $f
done
