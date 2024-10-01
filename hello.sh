
#!/bin/bash
sayHello(){
echo "Wie heisst du?"
read user
echo "Wie alt bist du?"
read alter
welcom="Hallo $user"
espeak "$welcom"
if [[ "$user" == "Fritz" ]]; then
echo "Schön, dass du da bist!"
fi

echo "Hallo $alter"

if [[ "$alter" == "18" ]]; then
echo "Schön das du da bist!"
fi
}
sayHello
sayHello

