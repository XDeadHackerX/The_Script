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
echo "		     	   ︻デ═一  Created by: XDeadHackerX v4.0  ︻デ═一 " 
echo "     -------------------------------------------------------------------------------------------"
echo "     Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "     -------------------------------------------------------------------------------------------"
echo
echo
echo "[*] Informacion de una Pagina Web"
echo
read -p "Dominio (Ej: web.com): " dominio
echo
echo
echo
echo
echo "		        (x_x) Identificando la Web y reconociendo las tecnologias que utiliza (x_x)"
echo
echo 
echo "********************************************************************************************************************************"
echo
echo "							WhatWeb"
echo
echo "`whatweb -v -a 3 www.$dominio`"
echo
echo "********************************************************************************************************************************"
echo
echo
echo
echo
echo "			 (x_x) Extrañendo Informacion sobre el propietario del dominio/web (x_x)"
echo
echo 
echo "********************************************************************************************************************************"
echo
echo "							Whois"
echo
echo " [*]Registry: hace referencia a la empresa que administra la lista donde se aloja un conjunto de nombres de dominio"
echo " [*]Registrant: es el propietario legal del dominio"
echo " [*]Registrar: hace uso de un registrador para realizar el registro"
echo
echo
echo
echo "`whois $dominio`"
echo
echo "********************************************************************************************************************************"
echo
echo
echo
echo
echo "		    (x_x) Intentando extraer los subdominios y correos electronicos de la Web (x_x)"
echo
echo 
echo "********************************************************************************************************************************"
echo
echo "							Dmitry"
echo
echo "`dmitry $dominio -s -e`"
echo
echo "********************************************************************************************************************************"
echo
echo
echo
echo " ==================="
echo " 1-Volver al Menu"
echo " 2-Volver a ejecutar"
echo " 3-Salir"
echo " ==================="
echo
read -p "Elige una opcion: " opc
	case $opc in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
