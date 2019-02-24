typeset -U tmp_path

tmp_path=(
    /usr/include(N-/)
    /include(N-/)
)
c_include_path=($c_include_path $tmp_path)
cplus_include_path=($cplus_include_path $tmp_path)

tmp_path=(
    /usr/lib(N-/)
    /lib(N-/)
)
ld_library_path=($ld_library_path $tmp_path)
library_path=($library_path $tmp_path)

manpath=(
    $manpath
    /usr/share/man/ja(N-/)
    /usr/share/man(N-/)
    /usr/man/ja(N-/)
    /usr/man(N-/)
    /share/man/ja(N-/)
    /share/man(N-/)
    /man/ja(N-/)
    /man(N-/)
)

path=(
    $path
    /usr/ucb(N-/)
    /usr/sbin(N-/)
    /usr/bin(N-/)
    /sbin(N-/)
    /bin(N-/)
)

pkg_config_path=(
    $pkg_config_path
    /usr/lib/pkgconfig(N-/)
    /lib/pkgconfig(N-/)
)
