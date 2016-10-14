typeset -U tmp_path
tmp_path=(
    /opt/local/*/lib(N-/)
    /opt/*/lib(N-/)
    /usr/local/*/lib(N-/)
    /usr/*/lib(N-/)
    /usr/lib(N-/)
    /lib(N-/)
)

typeset -gUT LD_LIBRARY_PATH ld_library_path
ld_library_path=($ld_library_path $tmp_path)

typeset -gUT LIBRARY_PATH library_path
library_path=($library_path $tmp_path)
