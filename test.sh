#!/bin/bash

sayHello(){
  echo "Wie heisst du?"
  read user
  welcome="Haljhlnkljmllo $user"
  echo "$welcome"
  espeak "$welcome"
  if [[ "$user" == "Fritz" ]]; then
   echo "Schön, dass du da bist!"
  fi
}

sayHello
