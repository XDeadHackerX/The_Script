#!bin/bash

clear
echo
echo
echo "	           ████████╗██╗░░██╗███████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗"
echo "	           ╚══██╔══╝██║░░██║██╔════╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝"
echo "	           ░░░██║░░░███████║█████╗░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░"
echo "	           ░░░██║░░░██╔══██║██╔══╝░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░"
echo "	           ░░░██║░░░██║░░██║███████╗██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░"
echo "	           ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░"
echo
echo "				               (⌐■_■)– ︻デ═一"
echo "			     __________________________________________________"					
echo "		     	       ︻デ═一  Created by: XDeadHackerX v5.0  ︻デ═一 " 
echo "         -------------------------------------------------------------------------------------------"
echo "         Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "         -------------------------------------------------------------------------------------------"
echo 
echo
echo " [*] Escanear nuestra red"
echo
echo " ==================================================="
echo " 1º Ver los Host conectados a la Red (1 min)""       |"
echo " ---------------------------------------------------"
echo " 2º Ver los puertos abiertos de cada Host (10 min)"" |"
echo " ==================================================="
echo
read -p " Elige una opcion: " opc1
	case $opc1 in
			1 )	read -p " Escribe la Ip del router (192.168.1.1 o 192.168.0.1): " opc2
				netdiscover -r $opc2
				;;
			2 )	read -p " Escribe la Ip del router (192.168.1.1 o 192.168.0.1): " opc2
				nmap -sV -O $opc2/24
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
echo
echo " ==================="
echo " 1-Volver al Menu"
echo " 2-Volver a ejecutar"
echo " 3-Salir"
echo " ==================="
echo
read -p " Elige una opcion: " opc3
	case $opc3 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/5.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

				
