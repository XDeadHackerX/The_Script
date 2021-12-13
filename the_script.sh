#bin/bash

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
echo "		     		   Create for: XDeadHackerX v1.0"
echo "	-----------------------------------------------------------------------------------"
echo " 	Any actions and or activities related to The_Script is solely your responsibility"
echo "	-----------------------------------------------------------------------------------"
echo
echo "   -------------------------------------------------------------------------------------------"
echo "   Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "   -------------------------------------------------------------------------------------------"
echo
echo "		     -----------------------------------------------"
echo "		     Elige una de las siguientes opciones: "
echo "		     0-Instalar requisitos"
echo "		     1-Informacion sobre tarjeta de Red + Velocidad"
echo "		     2-Encontrar Redes Sociales"
echo "		     3-Informacion de un numero de Telefono"
echo "		     4-Salir"
echo "		     -----------------------------------------------"
echo
read -p " Elige una opcion: " opc
	case $opc in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	exit
	esac
