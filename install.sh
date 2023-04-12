echo starting install
echo Enter your API Key/Token:
read apikey
echo 'PUSHOVER_MESSAGE_TEXT="apikey"' | cat - sshlogin.sh > temp && mv temp sshlogin.sh
echo Enter your User Token:
read userkey
echo 'PUSHOVER_MESSAGE_TEXT="userkey"' | cat - sshlogin.sh > temp && mv temp sshlogin.sh
echo '#!/bin/bash' | cat - sshlogin.sh > temp && mv temp sshlogin.sh
chmod +x sshlogin.sh
chmod +x pushover.sh
mdkir /opt/push
cp pushover.sh /opt/push/
cp sshlogin.sh /usr/local/bin/
echo "session optional pam_exec.so seteuid /usr/local/bin/sshlogin.sh" >> /etc/pam.d/sshd
echo installed