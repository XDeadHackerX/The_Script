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
echo " [*] Metadatos"
echo
echo " ========================================="
echo " 1º Extraer Metadatos de un fichero""      |"
echo " -----------------------------------------"
echo " 2º Eliminar Metadatos de un fichero""     |"
echo " -----------------------------------------"
echo " 3º Eliminar Metadatos de un directorio""  |"
echo " ========================================="
echo
read -p " Elige una opcion: " opc
	case $opc in
			1 )	read -p " Escibe el nombre del archivo con su ruta (/home/kali/Escritorio/Prueba.png): " meta
				sudo exiftool -v -s -G $meta
				;;
			2 )	read -p " Escibe el nombre del archivo con su ruta (/home/kali/Escritorio/Prueba.png): " meta
				sudo exiftool -r -overwrite_original -all= $meta
				;;
			3 )	read -p " Escibe el nombre del archivo con su ruta (/home/kali/Escritorio/prueba/): " meta
				sudo exiftool -r -overwrite_original -all= $meta
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
read -p " Elige una opcion: " opc1
	case $opc1 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/9.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
