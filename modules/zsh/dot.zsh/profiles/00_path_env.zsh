# PATH
PATH_TMP=
_glob_add_path_env PATH_TMP "/bin" "/sbin"
_glob_add_path_env PATH_TMP "/usr/bin" "/usr/sbin"
_glob_add_path_env PATH_TMP "/usr/ucb"
_glob_add_path_env PATH_TMP "/usr/*/bin" "/usr/*/sbin"
_glob_add_path_env PATH_TMP "/usr/local/*/bin" "/usr/local/*/sbin"
_glob_add_path_env PATH_TMP "/opt/bin" "/opt/sbin"
_glob_add_path_env PATH_TMP "/opt/*/bin" "/opt/*/sbin"
_glob_add_path_env PATH_TMP "/opt/local/*/bin" "/opt/local/*/sbin"
PATH=$PATH_TMP
export PATH

# MANPATH
MANPATH=
_glob_add_path_env MANPATH "/man" "/man/ja"
_glob_add_path_env MANPATH "/share/man" "/share/man/ja"
_glob_add_path_env MANPATH "/usr/man" "/usr/man/ja"
_glob_add_path_env MANPATH "/usr/share/man" "/usr/share/man/ja"
_glob_add_path_env MANPATH "/usr/*/man" "/usr/*/man/ja"
_glob_add_path_env MANPATH "/usr/*/share/man" "/usr/*/share/man/ja"
_glob_add_path_env MANPATH "/usr/local/*/man" "/usr/local/*/man/ja"
_glob_add_path_env MANPATH "/usr/local/*/share/man" "/usr/local/*/share/man/ja"
_glob_add_path_env MANPATH "/opt/*/man" "/opt/*/man/ja"
_glob_add_path_env MANPATH "/opt/*/share/man" "/opt/*/share/man/ja"
_glob_add_path_env MANPATH "/opt/local/*/man" "/opt/local/*/man/ja"
_glob_add_path_env MANPATH "/opt/local/*/share/man" "/opt/local/*/share/man/ja"
export MANPATH

# LD_LIBRARY_PATH
LD_LIBRARY_PATH=
_glob_add_path_env LD_LIBRARY_PATH "/lib"
_glob_add_path_env LD_LIBRARY_PATH "/usr/lib"
_glob_add_path_env LD_LIBRARY_PATH "/usr/*/lib"
_glob_add_path_env LD_LIBRARY_PATH "/usr/local/*/lib"
_glob_add_path_env LD_LIBRARY_PATH "/opt/*/lib"
_glob_add_path_env LD_LIBRARY_PATH "/opt/local/*/lib"
export LD_LIBRARY_PATH

# LIBRARY_PATH
LIBRARY_PATH=
_glob_add_path_env LIBRARY_PATH "/lib"
_glob_add_path_env LIBRARY_PATH "/usr/lib"
_glob_add_path_env LIBRARY_PATH "/usr/*/lib"
_glob_add_path_env LIBRARY_PATH "/usr/local/*/lib"
_glob_add_path_env LIBRARY_PATH "/opt/*/lib"
_glob_add_path_env LIBRARY_PATH "/opt/local/*/lib"
export LIBRARY_PATH

# C_INCLUDE_PATH
C_INCLUDE_PATH=
_glob_add_path_env C_INCLUDE_PATH "/include"
_glob_add_path_env C_INCLUDE_PATH "/usr/include"
_glob_add_path_env C_INCLUDE_PATH "/usr/*/include"
_glob_add_path_env C_INCLUDE_PATH "/usr/local/*/include"
_glob_add_path_env C_INCLUDE_PATH "/opt/*/include"
_glob_add_path_env C_INCLUDE_PATH "/opt/local/*/include"
export C_INCLUDE_PATH

# CPLUS_INCLUDE_PATH
CPLUS_INCLUDE_PATH=
_glob_add_path_env CPLUS_INCLUDE_PATH "/include"
_glob_add_path_env CPLUS_INCLUDE_PATH "/usr/include"
_glob_add_path_env CPLUS_INCLUDE_PATH "/usr/*/include"
_glob_add_path_env CPLUS_INCLUDE_PATH "/usr/local/*/include"
_glob_add_path_env CPLUS_INCLUDE_PATH "/opt/*/include"
_glob_add_path_env CPLUS_INCLUDE_PATH "/opt/local/*/include"
export CPLUS_INCLUDE_PATH

# PKG_CONFIG_PATH
PKG_CONFIG_PATH=
_glob_add_path_env PKG_CONFIG_PATH "/lib/pkgconfig"
_glob_add_path_env PKG_CONFIG_PATH "/usr/lib/pkgconfig"
_glob_add_path_env PKG_CONFIG_PATH "/usr/*/lib/pkgconfig"
_glob_add_path_env PKG_CONFIG_PATH "/usr/local/*/lib/pkgconfig"
_glob_add_path_env PKG_CONFIG_PATH "/opt/*/lib/pkgconfig"
_glob_add_path_env PKG_CONFIG_PATH "/opt/local/*/lib/pkgconfig"
export PKG_CONFIG_PATH
