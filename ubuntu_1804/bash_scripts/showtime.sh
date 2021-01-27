#!/usr/bin/env bash

#watch -n 1 " date '+%D%n%T' | figlet -k "


while true;
    do echo "$(date '+%D %T' | toilet -f term -F border --gay)";
    sleep 1;
    clear;
done

exit 0
