typeset -U tmp_path
tmp_path=(
    /opt/local/*/include(N-/)
    /opt/*/include(N-/)
    /usr/local/*/include(N-/)
    /usr/*/include(N-/)
    /usr/include(N-/)
    /include(N-/)
)

typeset -gUT C_INCLUDE_PATH c_include_path
c_include_path=($c_include_path $tmp_path)

typeset -gUT CPLUS_INCLUDE_PATH cplus_include_path
cplus_include_path=($cplus_include_path $tmp_path)
