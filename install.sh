echo starting install
echo Enter your API Key/Token:
read apikey
echo APIKEY="'$apikey'" | cat - sshlogin.sh > temp && mv temp sshlogin.sh
echo Enter your User Token:
read userkey
echo USERKEY="'$userkey'" | cat - sshlogin.sh > temp && mv temp sshlogin.sh
echo '#!/bin/bash' | cat - sshlogin.sh > temp && mv temp sshlogin.sh
chmod +x sshlogin.sh
chmod +x pushover.sh
mkdir /opt/push
cp pushover.sh /opt/push/
cp sshlogin.sh /usr/local/bin/
echo "session optional pam_exec.so seteuid /usr/local/bin/sshlogin.sh" >> /etc/pam.d/sshd
echo installed