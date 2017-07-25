typeset -U tmp_path
tmp_path=(
    ${HOME}/lib(N-/)
    ${HOME}/opt/*/lib(N-/)
)

ld_library_path=($tmp_path $ld_library_path)
library_path=($tmp_path $library_path)
