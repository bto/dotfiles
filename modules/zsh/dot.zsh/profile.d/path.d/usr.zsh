typeset -U tmp_path

tmp_path=(
    /usr/opt/*/include(N-/)
    /usr/opt/include(N-/)
    /usr/*/include(N-/)
)
c_include_path=($tmp_path $c_include_path)
cplus_include_path=($tmp_path $cplus_include_path)

tmp_path=(
    /usr/opt/*/lib(N-/)
    /usr/opt/lib(N-/)
    /usr/*/lib(N-/)
)
ld_library_path=($tmp_path $ld_library_path)
library_path=($tmp_path $library_path)

manpath=(
    /usr/opt/*/share/man/ja(N-/)
    /usr/opt/*/share/man(N-/)
    /usr/opt/*/man/ja(N-/)
    /usr/opt/*/man(N-/)
    /usr/opt/share/man/ja(N-/)
    /usr/opt/share/man(N-/)
    /usr/opt/man/ja(N-/)
    /usr/opt/man(N-/)
    /usr/*/share/man/ja(N-/)
    /usr/*/share/man(N-/)
    /usr/*/man/ja(N-/)
    /usr/*/man(N-/)
    $manpath
)

path=(
    /usr/opt/*/sbin(N-/)
    /usr/opt/*/bin(N-/)
    /usr/opt/sbin(N-/)
    /usr/opt/bin(N-/)
    /usr/*/sbin(N-/)
    /usr/*/bin(N-/)
    $path
)

pkg_config_path=(
    /usr/opt/*/lib/pkgconfig(N-/)
    /usr/opt/lib/pkgconfig(N-/)
    /usr/*/lib/pkgconfig(N-/)
    $pkg_config_path
)
