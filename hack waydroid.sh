#!/bin/sh
sudo apt install git -y
sudo apt install python3.12-venv
git clone https://github.com/casualsnek/waydroid_script
cd waydroid_script
python3 -m venv venv
venv/bin/pip install -r requirements.txt
sudo venv/bin/python3 main.py
sudo apt install lzip
sudo venv/bin/python3 main.py install gapps
waydroid show-full-ui
sudo python3 main.py google
sudo venv/bin/python3 main.py install magisk
sudo venv/bin/python3 main.py install libndk
sudo venv/bin/python3 main.py install libhoudini
sudo venv/bin/python3 main.py install widevine
sudo venv/bin/python3 main.py install smartdock
sudo venv/bin/python3 main.py install mitm --ca-cert mycert.pem
sudo venv/bin/python3 main.py hack nodataperm
sudo python main.py install microg
sudo venv/bin/python3 main.py hack hidestatusbar
sudo venv/bin/python3 main.py certified
