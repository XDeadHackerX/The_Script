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
echo " -----------------------------------------------------------"
echo " 4º Escanear dispositivos conectados a un Wifi Ajeno""|"
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
								read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
								read -p "[*] Cortar la salida a internet para evitar futuros errores? (y/n): " opc2
								echo
								if [ $opc2 = y ]
									then
										sudo airmon-ng check kill >/dev/null
									else
								echo "OK"
								fi
								sudo ifconfig $interfaz promisc >/dev/null
								sudo airmon-ng start $interfaz >/dev/null
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
								sudo airmon-ng 
								echo
								read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
								echo
								sudo ifconfig $interfaz2 promisc >/dev/null
								sudo ifconfig $interfaz2 down >/dev/null
								sudo macchanger -a $interfaz2 >/dev/null
								sudo ifconfig $interfaz2 up >/dev/null
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
								read -p "Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
								echo
								echo "[#] Desactivando Ataque y Protocolos"
								echo
								sudo ifconfig $interfaz2 down >/dev/null
								sudo macchanger -p $interfaz2 >/dev/null
								sudo ifconfig $interfaz2 up >/dev/null
								sudo ifconfig $interfaz2 -promisc >/dev/null
								sudo airmon-ng stop $interfaz2 >/dev/null
								sudo ifconfig $interfaz -promisc >/dev/null
								sudo systemctl restart NetworkManager.service >/dev/null
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
				sudo airmon-ng
				read -p "Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
				echo
				sudo airodump-ng $interfaz2 --band abg
				;;
			4 )	echo
				sudo airmon-ng
				read -p "Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
				echo
				sudo wash -2 -5 -a -i $interfaz2
				read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
				read -p "[*] Copia el Canal (Ch) del Wifi Objetivo y pegelo a continuacion: " ch
				echo
				sleep 1
				echo "Listo"
				echo "Pulse Ctrl + c para finalizar el Scaneo"
				sleep 3
				sudo airodump-ng -c $ch --bssid $bssid $interfaz2 --band abg
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
