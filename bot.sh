opcion="si"
while [ "$opcion" = "si" ];
do

export username=Emanuel
echo
echo " ¡Buen dia, $username!"

echo
echo " +------------------+ "
echo " | MENU DE OPCIONES | "
echo " +------------------+ "
echo

echo " 1) Mostrar la hora en formato de 12 horas (AM/PM)"
echo " 2) Mostrar el clima de hoy en Bahia Blanca"
echo

opcion=0
while [ "$opcion" -lt "1" ] || [ "$opcion " -gt "2" ];

do
echo " Elija una opcion:"
read opcion
echo
if [ "$opcion" -lt "1" -o "$opcion" -gt "2" ];then
echo " Opcion incorrecta, vuelva a elegir."
fi
done
if [ "$opcion" -eq "1" ]; then 
echo "$(date +%l:%M%p)"
elif [ "$opcion" -eq "2" ]; then
curl wttr.in/Bahia_Blanca,Argentina?0

fi

echo
echo " ¿Volver al Menu de Opciones? (si / no)"
read opcion

done

