#!/bin/bash
myCity (){
echo "Wie heisst dein Vornamen"
read Vornamen
echo "Wie heisst dein Nachnamen"
read Nachnamen
echo "Wie lautet deine Adresse"
read Adresse
echo "Was ist deine Lieblingsfarbe"
read Lieblingsfarbe
echo "Was ist deine Lieblingsstadt"
read Lieblingsstadt

    echo "Hallo $Vornamen $Nachnamen"
    echo "Du wohnst im $Adresse "
    echo "Deine Lieblingsfarbe ist $Lieblingsfarbe"
    if [[ $Lieblingsstadt == Luzern ]]; then
     echo "$Lieblingsstadt ist auch meine Lieblingsstadt"
     else echo "$Lieblingsstadt ist eine schöne Stadt"
     fi

}
myCity

    
