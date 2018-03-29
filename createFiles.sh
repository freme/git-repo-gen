#!/bin/bash

curl -s -L -O https://github.com/csmith-project/csmith/archive/csmith-2.3.0.tar.gz
tar xzf csmith-2.3.0.tar.gz
cd csmith-csmith-2.3.0
cmake .
make
mkdir -p ../testrepo/output
cp ./src/csmith ../testrepo/
cp -a ./runtime ../testrepo/
cd ../testrepo

SIZE_MB=10
while [[ $(du -ms . | cut -f 1) -lt ${SIZE_MB} ]]; do
  for i in {1..10}; do
    NAME=$( head -c$((10 + $RANDOM % 256)) < /dev/urandom | base64 | tr -d '=+' | tr -dc ' -~=' | tr 'ABCDEF\\\\' '///////' )
    DIR=$(dirname $NAME)
    FILE=$(basename $NAME)
    mkdir -p ./$DIR
    ./csmith --lang-cpp --cpp11 >./${DIR}/${FILE}.cpp
  done
done

