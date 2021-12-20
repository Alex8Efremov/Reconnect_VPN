#!/bin/bash

# ping in a loop until the net is up
# and reconnecting to a loose connection


ip=10.8.0.1
reconnect()
{
# ip=10.8.0.1
declare -i s=0
declare -i m=0
while ! ping -c1 -w2 $ip  &> /dev/null ;
do
  echo "connection interrupted to $ip" $m:$s
  nmcli con up id client_2
  sleep 10
  s=s+10
  if test $s -ge 60; then
    s=0
    m=m+1;
  fi
done
echo "------>> Connected to $ip <<------"
connect
}



connect()
{
declare -i s=0
declare -i m=0
while ping -c1 -w2 $ip  &> /dev/null ;
do
  echo "connect to $ip" $m:$s
  sleep 180
  s=s+10
  if test $s -ge 100; then
    s=0
    m=m+1;
  fi
done
echo -e "--------->>  UP! (connect a speaker) <<--------" \\a
reconnect
}

reconnect
