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
echo "	[*] Elige una de las siguientes opciones: "
echo "	------------------------------------------------------------------------------------"
echo "	0º Instalar requisitos        		                (Marcar la 1º vez)	    "
echo "	1º Informacion sobre la tarjeta de Red + Velocidad	(Informacion importante)    "
echo "	2º Informacion de una Pagina Web		        (OSINT)			    "
echo "	3º Informacion de un numero de Telefono  		(Funciona mal)		    "
echo "	4º Encontrar Redes Sociales    			        (No es certero al 100%)	    "
echo "	5º Metadatos		               	                (Extraerlos y o eliminarlos)"
echo "	6º ☢Salir☢					        (Salir del programa)	    "
echo "	------------------------------------------------------------------------------------"
echo
read -p " [*] Elige una opcion: " opc
	case $opc in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;
			6 )	exit
	esac
