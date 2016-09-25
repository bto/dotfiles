# PATH
_glob_add_path_env PATH "${HOME}/opt/*/bin" "${HOME}/opt/*/sbin"
_glob_add_path_env PATH "${HOME}/bin" "${HOME}/sbin"

# MANPATH
_glob_add_path_env MANPATH "${HOME}/opt/*/man" "${HOME}/opt/*/share/man"
_glob_add_path_env MANPATH "${HOME}/opt/*/man/ja" "${HOME}/opt/*/share/man/ja"
_glob_add_path_env MANPATH "${HOME}/share/man" "${HOME}/man"
_glob_add_path_env MANPATH "${HOME}/share/man/ja" "${HOME}/man/ja"

# LD_LIBRARY_PATH
_glob_add_path_env LD_LIBRARY_PATH "${HOME}/opt/*/lib"
_glob_add_path_env LD_LIBRARY_PATH "${HOME}/lib"

# LIBRARY_PATH
_glob_add_path_env LIBRARY_PATH "${HOME}/opt/*/lib"
_glob_add_path_env LIBRARY_PATH "${HOME}/lib"

# C_INCLUDE_PATH
_glob_add_path_env C_INCLUDE_PATH "${HOME}/opt/*/include"
_glob_add_path_env C_INCLUDE_PATH "${HOME}/include"

# CPLUS_INCLUDE_PATH
_glob_add_path_env CPLUS_INCLUDE_PATH "${HOME}/opt/*/include"
_glob_add_path_env CPLUS_INCLUDE_PATH "${HOME}/include"

# PKG_CONFIG_PATH
_glob_add_path_env PKG_CONFIG_PATH "${HOME}/opt/*/lib/pkgconfig"
_glob_add_path_env PKG_CONFIG_PATH "${HOME}/lib/pkgconfig"
