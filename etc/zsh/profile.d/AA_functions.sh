#
# add_env 変数名 文字列...
#
#   変数に":"区切りで値を追加する。$PATHとかそんなやつ。
#   与えられた文字列のメタキャラクタを展開する。/usr/*/bin みたいな。
#   値がディレクトリの場合にだけ追加する。ディレクトリじゃない場合は追加しない。
#
function add_env(){
  env_name=$1
  shift

  for i in $@; do
    if ! dirs=`eval echo $i` > /dev/null 2>&1; then
      continue
    fi

    for i in `eval echo $dirs`; do
      if eval echo \$$env_name | egrep '(\:|^)'$i'(\:|$)' >/dev/null 2>&1; then
        continue
      fi

      if [ -d $i ]; then
        eval $env_name=\$$env_name:$i
      fi
    done
  done
}

#
# clean_env 変数名...
#
#   与えられた変数の":"区切りの値をきれいにする。
#   今は先頭の":"と重複している":"を取り除く。
#   重複した設定値を削除するようにしたいなぁ。
#
function clean_env(){
  for i in $@; do
    eval clean_env_tmp=\$$i
    clean_env_tmp=`echo $clean_env_tmp | sed -e "s/^\://" -e "s/\:\:/:/g"`
    eval $i=$clean_env_tmp
  done
}
