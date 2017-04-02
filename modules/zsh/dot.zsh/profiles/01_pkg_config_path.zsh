typeset -gUT PKG_CONFIG_PATH pkg_config_path
pkg_config_path=(
    /opt/local/*/lib/pkgconfig(N-/)
    /opt/*/lib/pkgconfig(N-/)
    /usr/local/opt/*/lib/pkgconfig(N-/)
    /usr/local/*/lib/pkgconfig(N-/)
    /usr/*/lib/pkgconfig(N-/)
    $pkg_config_path
    /usr/lib/pkgconfig(N-/)
    /lib/pkgconfig(N-/)
)
