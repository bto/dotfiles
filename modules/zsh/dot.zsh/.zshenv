source $(dirname ${(%):-%N})/var/init.zsh

functions_dir=$(dirname ${(%):-%N})/functions
fpath=($fpath $functions_dir(N-/))
for f in $functions_dir/*; do
    autoload -U $(basename $f)
done

_sources ~/.zsh?*/.zshenv(N-.)
