[ -f ~/.vim/plugin/editorconfig.vim ] && return

mkdir -p ~/.vim

http_client \
    'http://www.vim.org/scripts/download_script.php?src_id=20468' \
    > ~/.vim/editorconfig-vim-0.3.2.zip

unzip -d ~/.vim ~/.vim/editorconfig-vim-0.3.2.zip
