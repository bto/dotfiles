typeset -U tmp_path

tmp_path=(
    ${HOME}/opt/*/include(N-/)
    ${HOME}/opt/include(N-/)
    ${HOME}/include(N-/)
)

c_include_path=($tmp_path $c_include_path)
cplus_include_path=($tmp_path $cplus_include_path)

tmp_path=(
    ${HOME}/opt/*/lib(N-/)
    ${HOME}/opt/lib(N-/)
    ${HOME}/lib(N-/)
)

ld_library_path=($tmp_path $ld_library_path)
library_path=($tmp_path $library_path)

manpath=(
    ${HOME}/opt/*/share/man/ja(N-/)
    ${HOME}/opt/*/share/man(N-/)
    ${HOME}/opt/*/man/ja(N-/)
    ${HOME}/opt/*/man(N-/)
    ${HOME}/opt/share/man/ja(N-/)
    ${HOME}/opt/share/man(N-/)
    ${HOME}/opt/man/ja(N-/)
    ${HOME}/opt/man(N-/)
    ${HOME}/share/man/ja(N-/)
    ${HOME}/share/man(N-/)
    ${HOME}/man/ja(N-/)
    ${HOME}/man(N-/)
    $manpath
)

path=(
    ${HOME}/opt/*/sbin(N-/)
    ${HOME}/opt/*/bin(N-/)
    ${HOME}/opt/sbin(N-/)
    ${HOME}/opt/bin(N-/)
    ${HOME}/sbin(N-/)
    ${HOME}/bin(N-/)
    $path
)

pkg_config_path=(
    ${HOME}/opt/*/lib/pkgconfig(N-/)
    ${HOME}/opt/lib/pkgconfig(N-/)
    ${HOME}/lib/pkgconfig(N-/)
    $pkg_config_path
)
