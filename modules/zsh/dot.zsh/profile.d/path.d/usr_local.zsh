typeset -U tmp_path

tmp_path=(
    /usr/local/*/include(N-/)
    /usr/local/include(N-/)
)
c_include_path=($tmp_path $c_include_path)
cplus_include_path=($tmp_path $cplus_include_path)

tmp_path=(
    /usr/local/*/lib(N-/)
    /usr/local/lib(N-/)
)
ld_library_path=($tmp_path $ld_library_path)
library_path=($tmp_path $library_path)

manpath=(
    /usr/local/*/share/man/ja(N-/)
    /usr/local/*/share/man(N-/)
    /usr/local/*/man/ja(N-/)
    /usr/local/*/man(N-/)
    /usr/local/share/man/ja(N-/)
    /usr/local/share/man(N-/)
    /usr/local/man/ja(N-/)
    /usr/local/man(N-/)
    $manpath
)

path=(
    /usr/local/*/sbin(N-/)
    /usr/local/*/bin(N-/)
    /usr/local/sbin(N-/)
    /usr/local/bin(N-/)
    $path
)

pkg_config_path=(
    /usr/local/*/lib/pkgconfig(N-/)
    /usr/local/lib/pkgconfig(N-/)
    $pkg_config_path
)
