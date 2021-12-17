#bin/bash

sudo apt-get install curl
sudo apt-get install cat
sudo apt-get install hostname
sudo curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
sudo apt-get install whatweb
sudo apt-get install whois
sudo apt-get install dmitry
sudo apt-get install python3

cd requisitos && sudo curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py && sudo python get-pip.py && sudo apt-get install python-pip

sudo apt-get install python3-pip  && sudo python3 get-pip.py && sudo /usr/bin/python3 -m pip install --upgrade pip && cd ..

if [ -d requisitos/sherlock ]
	then
		cd requisitos && sudo rm -r sherlock && sudo git clone https://github.com/sherlock-project/sherlock.git && cd sherlock && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && cd sherlock 			&& sudo chmod 777 sherlock.py && cd .. && cd .. && cd ..
	else 
		cd requisitos && sudo git clone https://github.com/sherlock-project/sherlock.git && cd sherlock && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && cd sherlock && sudo chmod 777 			sherlock.py && cd .. && cd .. && cd ..
		
fi

if [ -d requisitos/phoneinfoga ] 
	then
		cd requisitos && sudo rm -r phoneinfoga && sudo curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash && ./phoneinfoga version && cd ..
	else
		cd requisitos && sudo curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash && ./phoneinfoga version && cd ..
fi

bash the_script.sh
