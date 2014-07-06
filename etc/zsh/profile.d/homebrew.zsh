_command_exists brew || return

# coreutils
_glob_add_path_env PATH $(brew --prefix coreutils)/libexec/gnubin
_glob_add_path_env MANPATH $(brew --prefix coreutils)/libexec/gnuman

# gnu-sed
_glob_add_path_env PATH $(brew --prefix gnu-sed)/libexec/gnubin
_glob_add_path_env MANPATH $(brew --prefix gnu-sed)/libexec/gnuman
