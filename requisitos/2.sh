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
echo "		     		   Create for: XDeadHackerX v2.0"
echo "	-----------------------------------------------------------------------------------"
echo " 	Any actions and or activities related to The_Script is solely your responsibility"
echo "	-----------------------------------------------------------------------------------"
echo
echo "   -------------------------------------------------------------------------------------------"
echo "   Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "   -------------------------------------------------------------------------------------------"
echo
read -p "Dominio (www.web.com): " dominio
echo
echo
echo
echo
echo "		        (x_x) Identificando la Web y reconociendo las tecnologias que utiliza (x_x)"
echo
echo
echo
echo 
echo "********************************************************************************************************************************"
echo
echo "							WhatWeb"
echo
echo "`whatweb -v -a 3 $dominio`"
echo
echo "********************************************************************************************************************************"
echo
echo
echo
echo
echo "			 (x_x) Extrañendo Informacion sobre el propietario del dominio/web (x_x)"
echo
echo
echo
echo 
echo "********************************************************************************************************************************"
echo
echo "							Whois"
echo
echo "*Registry: hace referencia a la empresa que administra la lista donde se aloja un conjunto de nombres de dominio"
echo "*Registrant: es el propietario legal del dominio"
echo "*Registrar: hace uso de un registrador para realizar el registro"
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
echo -------------------
echo "1-Volver al Menu"
echo "2-Salir"
echo -------------------
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash the_script.sh
				;;
			2 )	exit && clear
	esac
