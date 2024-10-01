#!/bin/bash

Nochmalspielen(){
zahl=$(($RANDOM % 10+1))
zahlE=0


    while [[ $zahlE -ne $zahl ]]; do
        
        zahlE=$(dialog --inputbox "Nennen eine Zahl" 10 30 2>&1 >/dev/tty)
        if [ $zahlE -lt $zahl ]; then
           dialog --msgbox "Die Gesuchte Zahl ist grösser" 10 30
            
        elif [ $zahlE -gt $zahl ]; then 
         dialog --msgbox "Die Gesuchte Zahl ist kleiner" 10 30
            
        fi
    done
dialog --msgbox "$zahl ist richtig" 10 30
dialog --yesno "Willst du noch mal spielen" 10 30
read antwort

    if [[ ja==$antwort ]]; then
    Nochmalspielen

    fi
    }
    Nochmalspielen