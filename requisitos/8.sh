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
echo " [*] Tarjera de Red"
echo
echo " ==========================================================="
echo " 1º Configuracion Tajeta de Red (Modo Monitor/Seguridad)""   |"
echo " -----------------------------------------------------------"
echo " 2º Ver estado de la Tarjeta de Red""                        |"
echo " -----------------------------------------------------------"
echo " 3º Escanear Wifi de los alrededores (Informacion avanzada)""|"
echo " ==========================================================="
echo
read -p " Elige una opcion: " opc
	case $opc in
			1 )	echo
				echo " ==================================================="
				echo " 1º Activar Modo Monitor + Seguridad""               |"
				echo " ---------------------------------------------------"
				echo " 2º Desactivar Modo Monitor, Mac y restablecerla""   |"
				echo " ==================================================="
				echo
				read -p " Elige una opcion: " opc
					case $opc in
							1 )	echo
								sudo airmon-ng
								echo
								read -p "Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
								read -p "Cortar la salida a internet para evitar futuros errores? (y/n): " opc1
								echo
								if [ $opc1 = y ]
									then
										sudo airmon-ng check kill
									else
										echo "OK"
								fi
								echo
								echo "======================="
								echo "Activando Modo Monitor"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sudo ifconfig $interfaz promisc
								sudo airmon-ng start $interfaz
								echo
								read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
								echo
								echo "======================="
								echo " Activando Modo Seguro"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								sudo ifconfig $interfaz2 promisc
								sudo ifconfig $interfaz2 down
								sudo macchanger -a $interfaz2
								sudo ifconfig $interfaz2 up
								sleep 1
								clear
								echo
								echo "=============================================================================="
								echo "                                    LISTO"
								echo "=============================================================================="
								echo
								sudo iwconfig
								echo "=============================================================================="
								sleep 1
								;;
							2 )	echo
								read -p "Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
								read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
								echo
								echo "=============================="
								echo "        Desactivando"
								echo "Ataque/Modo Monitor/Seguridad"
								echo "=============================="
								echo "-------->""                    |"
								sleep 1
								echo "--------------->""             |"
								sleep 1
								echo "---------------------->""      |"
								sleep 1
								echo "---------------------------->""|"
								echo "=============================="
								echo
								sudo ifconfig $interfaz2 down
								sudo macchanger -p $interfaz2
								sudo ifconfig $interfaz2 up
								sleep 2
								sudo ifconfig $interfaz2 -promisc
								sudo airmon-ng stop $interfaz2
								sudo ifconfig $interfaz -promisc
								sudo systemctl restart NetworkManager.service
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
				;;
			2 )	echo
				echo "=============================================================================="
				echo "                              Estado Tarjeta"
				echo "=============================================================================="
				sudo airmon-ng
				echo "------------------------------------------------------------------------------"
				sudo iwconfig
				echo "=============================================================================="
				;;
			3 )	echo
				read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
				echo
				sudo airodump-ng $interfaz2
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
			2 )	bash requisitos/8.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
