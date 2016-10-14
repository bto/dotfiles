typeset -U tmp_path
tmp_path=(
    ${HOME}/include(N-/)
    ${HOME}/opt/*/include(N-/)
)

c_include_path=($tmp_path $c_include_path)
cplus_include_path=($tmp_path $cplus_include_path)
