#!/bin/bash

Nochmalspielen(){
zahl=$(($RANDOM % 10+1))
ZahlE=0


    while [[ $zahlE -ne $zahl ]]; do
        echo " Nenne eine Zahl"
        read zahlE
        if [ $zahlE -lt $zahl ]; then
            echo " Die Gesuchte Zahl ist höer"
            
        elif [ $zahlE -gt $zahl ]; then 
            echo "Die gesuchte Zahl ist kleiner"
            
        fi
    done
echo "$zahl ist richtig"
echo " Wilst noch mal spielen"
read antwort

    if [[ ja==$antwort ]]; then
    Nochmalspielen

    fi
    }
    Nochmalspielen