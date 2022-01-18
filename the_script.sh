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
echo "	[*] Elige una de las siguientes opciones: "
echo "	---------------------------------------------------------------------------------------------"
echo "	0º Instalar requisitos        		                (Marcar la 1º vez)	             "
echo "	1º Informacion sobre la tarjeta de Red + Velocidad	(Toda la Informacion necesaria)      "
echo "	2º Informacion de una Pagina Web		        (Info Tecnologias y del Propietario) "
echo "	3º Informacion de una Empresa				(Emails/Trabajadores/Dominios)       "
echo "	4º Informacion de una Persona    			(Instagram/Email/Nick)	             "
echo "	5º Desencriptar un fichero		               	(Desencriptar un .zip, .rar, fichero)"
echo "	6º Escanear nuestra red		               	        (Ver los host conectados)            "
echo "	7º Metadatos		               	                (Extraerlos y o eliminarlos)         "
echo "	8º ☢Salir☢					        (Salir del programa)	             "
echo "	---------------------------------------------------------------------------------------------"
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
			5 )	bash requisitos/6.sh
				;;
			6 )	bash requisitos/5.sh
				;;
			7 )	bash requisitos/7.sh
				;;
			8 )	exit
	esac
