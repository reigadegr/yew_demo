set -x
rm $(find ./src -name "*.bak")
rm $(dirname "$0")/*.bak $(dirname "$0")/.*.bak module/*.bak

rm $(find ./src -name "thread-opt")
rm ./thread-opt

for i in $(find ./src -name "*.rs"); do
    nohup dos2unix $i >/dev/null 2>&1 &
done

nohup rm -rf $(find ./target -name "*thread-opt*") >/dev/null 2>&1 &
nohup rm -rf $(find ./target -name "*thread_opt*") >/dev/null 2>&1 &
nohup rm -rf $(find ./target -name "*mimalloc*") >/dev/null 2>&1 &
nohup rm -rf $(find ./target -name "*binder*") >/dev/null 2>&1 &
uid=$(dumpsys package com.termux | grep appId | awk 'NR==1{print $1}' | cut -d '=' -f2)
chown -R $uid:$uid  ./src build.rs ./*.toml ./module
chmod -R 0644 ./src build.rs  ./*.toml  ./module
