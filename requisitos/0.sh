#!bin/bash

sudo apt-get install curl
sudo apt install git
sudo apt-get install cat
sudo apt-get install hostname
sudo curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
sudo pip install speedtest-cli
sudo apt-get install whatweb
sudo apt-get install whois
sudo apt-get install dmitry
sudo apt-get install python3
sudo apt-get install exiftool
sudo apt-get install -y netdiscover
sudo pip install aiohttp
sudo pip install aiodns
sudo pip install shodan
sudo pip install aiosqlite
sudo pip install ujson
sudo pip install netaddr
sudo pip install uvloop
sudo pip install aiomultiprocess

cd requisitos

sudo curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py && sudo python get-pip.py && sudo apt-get install python-pip

sudo apt-get install python3-pip  && sudo python3 get-pip.py && sudo /usr/bin/python3 -m pip install --upgrade pip

if [ -d requisitos/theHarvester ]
	then
		sudo rm -r theHarvester && sudo git clone https://github.com/laramies/theHarvester.git && cd theHarvester && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && python3 setup.py install && cd ..
	else 
		sudo git clone https://github.com/laramies/theHarvester.git && cd theHarvester && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && python3 setup.py install && cd ..
		
fi
cd ..
if [ -d requisitos/sherlock ]
	then
		sudo rm -r sherlock && sudo git clone https://github.com/sherlock-project/sherlock.git && cd sherlock && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && cd sherlock && sudo chmod 777 sherlock.py
	else 
		sudo git clone https://github.com/sherlock-project/sherlock.git && cd sherlock && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && cd sherlock && sudo chmod 777 sherlock.py
		
fi

cd .. && bash the_script.sh
