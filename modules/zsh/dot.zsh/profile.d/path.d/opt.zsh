typeset -U tmp_path

tmp_path=(
    /opt/local/*/include(N-/)
    /opt/local/include(N-/)
    /opt/*/include(N-/)
    /opt/include(N-/)
)
c_include_path=($tmp_path $c_include_path)
cplus_include_path=($tmp_path $cplus_include_path)

tmp_path=(
    /opt/local/*/lib(N-/)
    /opt/local/lib(N-/)
    /opt/*/lib(N-/)
    /opt/lib(N-/)
)
ld_library_path=($tmp_path $ld_library_path)
library_path=($tmp_path $library_path)

manpath=(
    /opt/local/*/share/man/ja(N-/)
    /opt/local/*/share/man(N-/)
    /opt/local/*/man/ja(N-/)
    /opt/local/*/man(N-/)
    /opt/local/share/man/ja(N-/)
    /opt/local/share/man(N-/)
    /opt/local/man/ja(N-/)
    /opt/local/man(N-/)
    /opt/*/share/man/ja(N-/)
    /opt/*/share/man(N-/)
    /opt/*/man/ja(N-/)
    /opt/*/man(N-/)
    /opt/share/man/ja(N-/)
    /opt/share/man(N-/)
    /opt/man/ja(N-/)
    /opt/man(N-/)
    $manpath
)

path=(
    /opt/local/*/sbin(N-/)
    /opt/local/*/bin(N-/)
    /opt/local/sbin(N-/)
    /opt/local/bin(N-/)
    /opt/*/sbin(N-/)
    /opt/*/bin(N-/)
    /opt/sbin(N-/)
    /opt/bin(N-/)
    $path
)

pkg_config_path=(
    /opt/local/*/lib/pkgconfig(N-/)
    /opt/local/lib/pkgconfig(N-/)
    /opt/*/lib/pkgconfig(N-/)
    /opt/lib/pkgconfig(N-/)
    $pkg_config_path
)
