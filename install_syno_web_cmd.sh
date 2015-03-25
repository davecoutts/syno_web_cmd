#  ssh into your Synology as root
#  e.g.   ssh root@SYNOLOGY_IP_ADDRESS
#  The root account password is the same as the admin password

# rm -rf /usr/local/syno_web_cmd
mkdir /usr/local/syno_web_cmd

cd /usr/local/syno_web_cmd

# Download bottle. http://bottlepy.org/docs/stable/index.html
wget http://bottlepy.org/bottle.py
# Download sh. http://amoffat.github.io/sh
wget https://raw.githubusercontent.com/amoffat/sh/master/sh.py

# Download bottle web app
wget https://raw.githubusercontent.com/davecoutts/syno_web_cmd/master/syno_web_cmd.py
# Download upstart script
wget https://raw.githubusercontent.com/davecoutts/syno_web_cmd/master/syno_web_cmd.conf

ln -s /usr/local/syno_web_cmd/syno_web_cmd.conf /etc/init/syno_web_cmd.conf
