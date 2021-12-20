#!bin/bash

clear
echo
echo
echo "	       ████████╗██╗░░██╗███████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗"
echo "	       ╚══██╔══╝██║░░██║██╔════╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝"
echo "	       ░░░██║░░░███████║█████╗░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░"
echo "	       ░░░██║░░░██╔══██║██╔══╝░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░"
echo "	       ░░░██║░░░██║░░██║███████╗██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░"
echo "	       ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░"
echo
echo "				           (⌐■_■)– ︻デ═一"
echo "			 __________________________________________________"					
echo "		     	   ︻デ═一  Created by: XDeadHackerX v3.0  ︻デ═一 " 
echo "     -------------------------------------------------------------------------------------------"
echo "     Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "     -------------------------------------------------------------------------------------------"
echo
echo
echo " [*] Informacion sobre la tarjeta de Red + Velocidad"
echo
echo " ===================================================="
echo " ☢ Tu IP Publica es la: " `curl -s http:/ifconfig.me`
echo " ☢ Tu IP Local es la: " `hostname -I`
echo " ☢ Tu MAC es la: " `cat /sys/class/net/*/address`
echo " ===================================================="
echo
echo
read -p " Quieres hacer una prueba de velocidad? (si/no): " opc
echo
	if [ $opc = si ]
		then
			echo " ¿Que Sistema Operativo usas?"
			echo " ----------------------------"
			echo " 1-Kali Linux"
			echo " 2-Ubuntu/Debian"
			echo " ----------------------------"
			read -p " Elige una opcion: " opc2
				case $opc2 in
						1 )	echo
							speedtest --simple
							;;
						2 )	echo
							speedtest -a
							;;
						* )	echo $RRPLY no es una opcion valida
				esac
		else
			bash the_script.sh
	fi
echo
echo " ==================="
echo " 1-Volver al Menu"
echo " 2-Volver a ejecutar"
echo " 3-Salir"
echo " ==================="
echo
read -p "Elige una opcion: " opc3
	case $opc3 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/1.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
