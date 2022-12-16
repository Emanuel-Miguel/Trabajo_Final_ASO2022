opcion="si"
while [ "$opcion" = "si" ];
do

echo
echo " +------------------+ "
echo " | JUEGO ADIVINADOR | "
echo " +------------------+ "

aleatorio=$(( $RANDOM % 50 + 1 ))
echo

Intento=1

echo " Ingrese su nombre:"
read nombre
echo

echo "- Ingrese el numero que debe adivinar:"
read numero

while [ "$numero" -ne "$aleatorio" ]  && [ "$Intento" -le "10" ];
do

if [ "$numero" -gt "$aleatorio" ]; then Intento=$(( $Intento+1 ))
echo "  El numero buscado es MENOR"
elif [ "$numero" -lt "$aleatorio" ]; then Intento=$(( $Intento+1 ))
echo "  El numero buscado es MAYOR"
else
echo "  Felicitaciones has acertado"
fi

echo
echo "- Ingrese el numero que debe adivinar:"
read numero

done

if [ "$Intento" -lt "6" ]; then
echo " ¡FELICITACIONES $nombre GENIO/A! adivinaste en los primeros 5 intentos"
elif [ "$Intento" -le "10" ]; then
echo " ¡FELICITACIONES $nombre! adivinaste en los primeros 10 intentos!"
else 
echo " MUY MAL $nombre ¿como no vas adivinar en 10 intentos?"
fi

echo
echo " ¿Queres volver a jugar? (si o no)"
read opcion

done

