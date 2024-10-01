#!/bin/bash
sayHello(){
user=$(dialog --inputbox "Wie heisst du?" 10 30 2>&1 >/dev/tty)
dialog --msgbox "Hallo $user" 10 30
    if [[ "$user" == "Fritz" ]]; then 
    dialog --msgbox "Schön das du da bist" 10 30
    fi
}
sayHello
sayHello