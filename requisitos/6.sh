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
echo " [*] Informacion de una Empresa"
echo
echo " ========================================="
echo " 1º Extraer Correos Electronicos""         |"
echo " -----------------------------------------"
echo " 2º Extraer Lista de Trabajadores""        |"
echo " -----------------------------------------"
echo " 3º Extraer todos los Dominios""           |"
echo " ========================================="
echo
read -p " Elige una opcion: " opc
	case $opc in
			1 )	read -p " Escibe la web de la empresa (dominio.com): " opc1
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc1 -l 100 -b google
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc1 -l 100 -b bing
				;;
			2 )	read -p " Escibe el nombre del archivo con su ruta (dominio.com): " opc2
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc2 -l 100 -b linkedin
				;;
			3 )	read -p " Escibe el nombre del archivo con su ruta (dominio.com): " opc3
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc3 -l 100 -b rocketreach
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc3 -l 100 -b pentesttools
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc3 -l 100 -b omnisint
				sudo python3 requisitos/theHarvester/theHarvester.py -d $opc3 -l 100 -b dnsdumpster
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
read -p " Elige una opcion: " opc4
	case $opc4 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/6.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
