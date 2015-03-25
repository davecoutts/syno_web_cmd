#  ssh into your Synology as root
#  e.g.   ssh root@SYNOLOGY_IP_ADDRESS
#  The root account password is the same as the admin password

# rm -rf /usr/local/syno_web_cmd
mkdir /usr/local/syno_web_cmd

cd /usr/local/syno_web_cmd

wget http://bottlepy.org/bottle.py
wget https://raw.githubusercontent.com/amoffat/sh/master/sh.py

wget https://raw.githubusercontent.com/davecoutts/syno_web_cmd/master/syno_web_cmd.py
wget https://raw.githubusercontent.com/davecoutts/syno_web_cmd/master/syno_web_cmd.conf

ln -s /usr/local/syno_web_cmd/syno_web_cmd.conf /etc/init/syno_web_cmd.conf

