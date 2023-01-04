#!/bin/bash
#reader program: listen on port 3000--read msg and send msg to localhost port 37529
coproc ncat -l localhost 3000

while read -r msg; do
  ncat localhost 37529 < echo $msg
done <&"${COPROC[0]}"

