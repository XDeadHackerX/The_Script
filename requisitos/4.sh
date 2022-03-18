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
echo "		     	       ︻デ═一  Created by: XDeadHackerX v2.0  ︻デ═一 " 
echo "         -------------------------------------------------------------------------------------------"
echo "         Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "         -------------------------------------------------------------------------------------------"
echo
echo
echo " [*] Encontrar Redes Sociales"
echo
echo " ============================================================================"
echo " 1º Informacion sobre una cuenta de Instagram (100% de Efectividad)""          |"
echo " ----------------------------------------------------------------------------"
echo " 2º Ver donde esta registrado un Email (95% de Efectividad)""                  |"
echo " ----------------------------------------------------------------------------"
echo " 3º Buscar la URL de las redes sociales donde esta registrado un Email (50%)"" |"
echo " ============================================================================"
echo
read -p " Elige una opcion: " opc1
	case $opc1 in
			1 )	read -p " Escribe el nombre de la cuenta de Instagram del Objetivo : " info
				echo
				cd requisitos/osi.ig && sudo python3 main.py -u $info
				cd ..
				cd ..
				;;
			2 )	read -p " Escribe el Correo Electronico del Objetivo [Gmail, Yahoo, Outlook] : " info
				echo
				sudo holehe --only-used $info
				;;
			3 )	echo " Pon uno de los siguientes datos del Objetivo [Nombre completo o Correo electrónico o Nick  o Número de Teléfono o Red Social]"
				echo
				sleep 2
				sudo bash requisitos/userrecon.sh $info
				echo
				echo "[*] Los .txt con la informacion substraida se encuentra en la ruta (the_script/$info.txt)"
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
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/4.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
