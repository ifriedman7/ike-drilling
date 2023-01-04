#!/bin/bash
#reader program: listen on port 3000--read msg and send msg to localhost port 37529
coproc ncat -l localhost 3000

while :
do
  read -r msg;
  echo $msg | nc localhost 37529
done <&"${COPROC[0]}"

