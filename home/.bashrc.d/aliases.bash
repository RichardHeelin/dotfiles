if hash hhvm 2>/dev/null; then
    alias composer-hhvm="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 `which composer`"
fi;
