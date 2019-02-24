typeset -gUT C_INCLUDE_PATH c_include_path
typeset -gUT CPLUS_INCLUDE_PATH cplus_include_path
typeset -gUT LD_LIBRARY_PATH ld_library_path
typeset -gUT LIBRARY_PATH library_path
typeset -gU  MANPATH manpath
typeset -gU  PATH path
typeset -gUT PKG_CONFIG_PATH pkg_config_path

source $(dirname ${(%):-%N})/path.d/basis.zsh
source $(dirname ${(%):-%N})/path.d/mac_developer_tools.zsh
source $(dirname ${(%):-%N})/path.d/usr.zsh
source $(dirname ${(%):-%N})/path.d/usr_local.zsh
source $(dirname ${(%):-%N})/path.d/opt.zsh
source $(dirname ${(%):-%N})/path.d/home.zsh
