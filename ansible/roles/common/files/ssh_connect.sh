#!/bin/sh
# reconnect to calth02

h=10.0.0.12;
while ! ssh -o ConnectTimeout=5 $h true;
do sleep 5;
done;
ssh $h