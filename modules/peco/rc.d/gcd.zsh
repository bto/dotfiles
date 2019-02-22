function gcd()
{
  local dir=$(ghq list -p | peco --layout=bottom-up)
  if [ ! -z "$dir" ]; then
    cd $dir
  fi
}
