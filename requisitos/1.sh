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
echo "*********************************************"
echo " Tu IP Publica es la: " `curl -s http:/ifconfig.me`
echo " Tu IP Local es la: " `hostname -I`
echo " Tu MAC es la: " `cat /sys/class/net/*/address`
echo "*********************************************"
echo
read	-p "Quieres hacer una prueba de velocidad? (Si/No): " opc
echo
	if [ $opc = Si ]
		then
			speedtest -a
		else
			bash the_script.sh
	fi
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
