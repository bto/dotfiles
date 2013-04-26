#
# PostgreSQL の設定
#

for x in {/usr/local,/usr}/pgsql; do
  if [ -d $x ]; then
    POSTGRES_HOME=$x
    break;
  fi
done

[ x$POSTGRES_HOME = x ] && return

PGLIB=$POSTGRES_HOME/lib
PGDATA=$POSTGRES_HOME/data
export PGLIB PGDATA

add_env MANPATH "$POSTGRES_HOME/man"
add_env LD_LIBRARY_PATH "$PGLIB"
