#!/bin/bash
#reader program: listen on port 3000--read msg and send msg to localhost port 37529
coproc ncat -l -k localhost 3000

while read -r msg; do
  echo $msg | nc localhost 37529
done <&"${COPROC[0]}"

