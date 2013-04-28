if ! which keychain > /dev/null 2>&1; then
  return
fi

keychain id_dsa id_dsa-nopass identity identity-nopass

if [ -f $HOME/.keychain/$HOST-sh ]; then
  source $HOME/.keychain/$HOST-sh
fi
