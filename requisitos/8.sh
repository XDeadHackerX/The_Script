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
				echo " 1º Activar Modo Monitor""                           |"
				echo " ---------------------------------------------------"
				echo " 2º Cambiar la Mac de la tajeta de red (Seguridad)"" |"
				echo " ---------------------------------------------------"
				echo " 3º Desactivar Modo Monitor, Mac y restablecerla""   |"
				echo " ==================================================="
				echo
				read -p " Elige una opcion: " opc
					case $opc in
							1 )	echo
								sudo ifconfig wlan0 promisc
								sudo airmon-ng start wlan0
								echo
								read -p " Cortar la salida a internet para evitar futuros errores? (si/no): " opc1
								echo
									if [ $opc1 = si ]
										then
											sudo airmon-ng check kill
										else
											echo " OK"
									fi
								echo
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
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
								sudo ifconfig wlan0mon promisc
								sudo ifconfig wlan0mon down
								sudo macchanger -a wlan0mon
								sudo ifconfig wlan0mon up
								echo
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sleep 1
								clear
								echo
								echo "=============================================================================="
								echo "                                     LISTO"
								echo "=============================================================================="
								echo
								sudo iwconfig
								echo "=============================================================================="
								sleep 1
								;;
							3 )	echo
								sudo ifconfig wlan0mon down
								sudo macchanger -p wlan0mon
								sudo ifconfig wlan0mon up
								sudo ifconfig wlan0mon -promisc
								sudo airmon-ng stop wlan0mon
								sudo ifconfig wlan0 -promisc
								sudo systemctl restart NetworkManager.service
								echo
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sleep 1
								clear
								echo
								echo "=============================================================================="
								echo "                                     LISTO"
								echo "=============================================================================="
								echo
								sudo iwconfig
								echo "=============================================================================="
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
				;;
			2 )	echo
				echo "=============================================================================="
				echo "                              Estado Tarjeta"
				echo "=============================================================================="
				echo
				sudo iwconfig
				echo "=============================================================================="
				;;
			3 )	echo
				sudo airodump-ng wlan0mon
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
