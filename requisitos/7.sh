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
echo "		     	       ︻デ═一  Created by: XDeadHackerX v2.2  ︻デ═一 " 
echo "         -------------------------------------------------------------------------------------------"
echo "         Cualquier acción y o actividad relacionada con The_Script es únicamente su responsabilidad"
echo "         -------------------------------------------------------------------------------------------"
echo 
echo
echo " [*] Escanear nuestra red"
echo
echo " ============================================================="
echo " 1º Ver los Host conectados a la Red (Muy Rapido)""            |"
echo " -------------------------------------------------------------"
echo " 2º Informacion puertos y sus versiones de un Host (Rapido)""  |"
echo " -------------------------------------------------------------"
echo " 3º Escaneo avanzado de los 65535 puertos (Intermedio)""       |"
echo " -------------------------------------------------------------"
echo " 4º Informacion puertos y sus versiones de una Red (Lento)""   |"
echo " ============================================================="
echo
read -p " Elige una opcion: " opc1
	case $opc1 in
			1 )	read -p " Escribe la Ip del router (192.168.1.0 o 192.168.0.0): " opc2
				netdiscover -r $opc2/24
				;;
			2 )	read -p " Escribe la Ip del Dispositivo/Host (Ej: 192.168.1.10): " opc3
				echo
				echo " =========================================="
				echo " 1º-Normal (Rapido)""                        |"
				echo " ------------------------------------------"
				echo " 2º-Normal y con guardado (Rapido)""         |"
				echo " ------------------------------------------"
				echo " 3º-Modo Seguro (Mas Lento)""                |"
				echo " ------------------------------------------"
				echo " 4º-Modo Seguro y con guardado (Mas Lento)"" |"
				echo " =========================================="
				echo
				read -p " Elige una opcion: " opc4
					case $opc4 in
							1 )	echo
								sudo nmap -sV -O $opc3
								echo
								;;
							2 )	echo
								sudo nmap -sV -O -oN $opc3.txt $opc3
								echo
								echo
								echo "///////////////////////////////////////////////////////"
								echo "El .txt se a guardado en /The_Script/$opc3.txt"
								echo "///////////////////////////////////////////////////////"
								;;
							3 )	echo
								sudo nmap -sV -O -Pn -sS -D 142.250.200.78,$opc3,40.76.4.15 --spoof-mac 0 $opc3
								echo
								;;
							4 )	echo
								sudo nmap -sV -O -Pn -oN $opc3.txt -sS -D 142.250.200.78,$opc3,40.76.4.15 --spoof-mac 0 $opc3
								echo
								echo
								echo "///////////////////////////////////////////////////////"
								echo "El .txt se a guardado en /The_Script/$opc3.txt"
								echo "///////////////////////////////////////////////////////"
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
				;;
			3 )	read -p " Escribe la Ip del Dispositivo/Host (Ej: 192.168.1.10): " opc5
				echo
				echo " =========================================="
				echo " 1º-Normal (Rapido)""                        |"
				echo " ------------------------------------------"
				echo " 2º-Normal y con guardado (Rapido)""         |"
				echo " ------------------------------------------"
				echo " 3º-Modo Seguro (Mas Lento)""                |"
				echo " ------------------------------------------"
				echo " 4º-Modo Seguro y con guardado (Mas Lento)"" |"
				echo " =========================================="
				echo
				read -p " Elige una opcion: " opc6
					case $opc6 in
							1 )	echo
								sudo nmap -sV -O -p "*" $opc5
								echo
								;;
							2 )	echo
								sudo nmap -sV -O -p "*" -oN $opc5.txt $opc5
								echo
								echo
								echo "///////////////////////////////////////////////////////"
								echo "El .txt se a guardado en /The_Script/$opc5.txt"
								echo "///////////////////////////////////////////////////////"
								;;
							3 )	echo
								sudo nmap -sV -O -p "*" -Pn -sS -D 142.250.200.78,$opc5,40.76.4.15 --spoof-mac 0 $opc5
								echo
								;;
							4 )	echo
								sudo nmap -sV -O -p "*" -Pn -oN $opc5.txt -sS -D 142.250.200.78,$opc5,40.76.4.15 --spoof-mac 0 $opc5
								echo
								echo
								echo "///////////////////////////////////////////////////////"
								echo "El .txt se a guardado en /The_Script/$opc5.txt"
								echo "///////////////////////////////////////////////////////"
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
				;;
			4 )	read -p " Escribe la Ip del router (192.168.1.0 o 192.168.0.0): " opc7
				echo
				echo " =========================================="
				echo " 1º-Normal (Rapido)""                        |"
				echo " ------------------------------------------"
				echo " 2º-Normal y con guardado (Rapido)""         |"
				echo " ------------------------------------------"
				echo " 3º-Modo Seguro (Mas Lento)""                |"
				echo " ------------------------------------------"
				echo " 4º-Modo Seguro y con guardado (Mas Lento)"" |"
				echo " =========================================="
				echo
				read -p " Elige una opcion: " opc8
					case $opc8 in
							1 )	echo
								sudo nmap -v -sV -O -p "*" $opc7/24
								echo
								;;
							2 )	echo
								sudo nmap -v -sV -O -p "*" -oN $opc7.txt $opc7/24
								echo
								echo
								echo "///////////////////////////////////////////////////////"
								echo "El .txt se a guardado en /The_Script/$opc7.txt"
								echo "///////////////////////////////////////////////////////"
								;;
							3 )	echo
								sudo nmap -v -sV -O -p "*" -Pn -sS -D 142.250.200.78,$opc7,40.76.4.15 --spoof-mac 0 $opc7
								echo
								;;
							4 )	echo
								sudo nmap -v -sV -O -p "*" -Pn -oN $opc7.txt -sS -D 142.250.200.78,$opc7,40.76.4.15 --spoof-mac 0 $opc7
								echo
								echo
								echo "///////////////////////////////////////////////////////"
								echo "El .txt se a guardado en /The_Script/$opc7.txt"
								echo "///////////////////////////////////////////////////////"
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
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
read -p " Elige una opcion: " opc9
	case $opc9 in
			1 )	bash the_script.sh
				;;
			2 )	bash requisitos/7.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

				
