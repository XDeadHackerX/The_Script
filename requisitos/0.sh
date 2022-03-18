#!bin/bash

cd requisitos

sudo apt-get update

sudo curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py && sudo python get-pip.py && sudo apt-get install python-pip

sudo apt-get install python3-pip  && sudo python3 get-pip.py && sudo /usr/bin/python3 -m pip install --upgrade pip

sudo apt-get install curl
sudo apt install git
sudo apt install python3.8
sudo python -m pip3 install --upgrade pip
sudo apt-get install cat
sudo apt-get install hostname
sudo curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
sudo pip install speedtest-cli
sudo pip3 install holehe
sudo apt-get install john
sudo apt-get install nmap
sudo apt-get install whatweb
sudo apt-get install whois
sudo apt-get install dmitry
sudo apt-get install python3
sudo apt-get install exiftool
sudo apt-get install -y netdiscover
sudo pip install shodan


sudo rm -r theHarvester

sudo rm -r sherlock

sudo rm -r osi.ig


sudo git clone https://github.com/th3unkn0n/osi.ig.git && cd osi.ig && sudo chmod 777 requirements.txt && python3 -m pip install -r requirements.txt

cd ..

sudo git clone https://github.com/laramies/theHarvester.git && cd theHarvester && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && sudo python3 setup.py install

cd ..
		
sudo git clone https://github.com/sherlock-project/sherlock.git && cd sherlock && sudo chmod 777 requirements.txt && sudo python3 -m pip install -r requirements.txt && cd sherlock && sudo chmod 777 sherlock.py

cd ..

cd ..

cd ..

bash the_script.sh
