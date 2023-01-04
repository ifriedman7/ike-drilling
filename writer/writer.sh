#!/bin/bash
#writer program: listen on port 37529--append date and msg to host mount /var/bucket/drilling.log
#which is docker volume /var/bucket:/var/bucket
coproc ncat -l -k localhost 37529

while read -r msg; do
  echo [`date`] $msg >> /var/bucket/drilling.log
done <&"${COPROC[0]}" 

