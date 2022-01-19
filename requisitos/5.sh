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
echo "		     	       ︻デ═一  Created by: XDeadHackerX v7.0  ︻デ═一 " 
echo "         -------------------------------------------------------------------------------------------"
echo "         Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "         -------------------------------------------------------------------------------------------"
echo
echo
echo " [*] Desencriptar un fichero"
echo
echo " ===================================================="
echo " 1º Desencriptar un .ZIP mediante Fuerza Bruta""      |"
echo " ----------------------------------------------------"
echo " 2º Desencriptar un .ZIP mediante un Diccionario""    |"
echo " ----------------------------------------------------"
echo " 3º Desencriptar un .RAR mediante Fuerza Bruta""      |"
echo " ----------------------------------------------------"
echo " 4º Desencriptar un .RAR mediante un Diccionario""    |"
echo " ----------------------------------------------------"
echo " 5º Desencriptar un Fichero mediante Fuerza Bruta""   |"
echo " ----------------------------------------------------"
echo " 6º Desencriptar un Fichero mediante un Diccionario"" |"
echo " ===================================================="
echo
echo
read -p " Elige una opcion: " opc
	case $opc in
			1 )	echo
				read -p " Pon la ruta del .ZIP: " fich
				echo
				echo "======================================================================================="
				cd requisitos
				echo
				sudo zip2john $fich > hash.txt
				sudo john hash.txt
				echo
				echo "---------------------------------------------------"
				echo "↓ La Contraseña se mostrará así-->  :contraseña:  ↓"
				echo "---------------------------------------------------"
				echo
				sudo john hash.txt --show
				echo
				echo "======================================================================================="
				echo
				cd ..
				;;
			2 )	echo
				read -p " Pon la ruta del .ZIP: " fich
				read -p " Pon la ruta del Diccionario: " dicc
				echo
				echo "======================================================================================="
				cd requisitos
				echo
				sudo zip2john $fich > hash.txt
				sudo john --wordlist=$dicc hash.txt
				sudo john hash.txt
				echo
				echo "---------------------------------------------------"
				echo "↓ La Contraseña se mostrará así-->  :contraseña:  ↓"
				echo "---------------------------------------------------"
				echo
				sudo john hash.txt --show
				echo
				echo "======================================================================================="
				echo
				cd ..
				;;
			3 )	echo
				read -p " Pon la ruta del .RAR: " fich
				echo
				echo "======================================================================================="
				cd requisitos
				echo
				sudo rar2john $fich > hash.txt
				sudo john hash.txt
				echo
				echo "---------------------------------------------------"
				echo "↓ La Contraseña se mostrará así-->  :contraseña:  ↓"
				echo "---------------------------------------------------"
				echo
				sudo john hash.txt --show
				echo
				echo "======================================================================================="
				echo
				cd ..
				;;
			4 )	echo
				read -p " Pon la ruta del .RAR: " fich
				read -p " Pon la ruta del Diccionario: " dicc
				echo
				echo "======================================================================================="
				cd requisitos
				echo
				sudo rar2john $fich > hash.txt
				sudo john --wordlist=$dicc hash.txt
				sudo john hash.txt
				echo
				echo "---------------------------------------------------"
				echo "↓ La Contraseña se mostrará así-->  :contraseña:  ↓"
				echo "---------------------------------------------------"
				echo
				sudo john hash.txt --show
				echo
				echo "======================================================================================="
				echo
				cd ..
				;;
			5 )	echo
				read -p " Pon la ruta del Fichero: " fich
				echo
				echo "======================================================================================="
				cd requisitos
				sudo john $fich
				echo
				echo "---------------------------------------------------"
				echo "↓ La Contraseña se mostrará así-->  :contraseña:  ↓"
				echo "---------------------------------------------------"
				echo
				sudo john hash.txt --show
				echo
				echo "======================================================================================="
				echo
				cd ..
				;;
			6 )	echo
				read -p " Pon la ruta del Fichero: " fich
				read -p " Pon la ruta del Diccionario: " dicc
				echo
				echo "======================================================================================="
				cd requisitos
				sudo john --wordlist=$dicc $fich
				echo
				echo "---------------------------------------------------"
				echo "↓ La Contraseña se mostrará así-->  :contraseña:  ↓"
				echo "---------------------------------------------------"
				echo
				sudo john hash.txt --show
				echo
				echo "======================================================================================="
				echo
				cd ..
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
