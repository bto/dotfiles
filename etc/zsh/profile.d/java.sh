#
# java の設定
#

# PATH の設定
add_env PATH "/usr/local/java/*/bin" "/usr/java/*/bin"

# JAVA_HOME の設定
for x in {/usr/local,/usr}/java/jdk /opt/jdk*; do
  if [ -d $x ]; then
    JAVA_HOME=$x
    break;
  fi
done > /dev/null 2>&1
[ x$JAVA_HOME = x ] && return
export JAVA_HOME
