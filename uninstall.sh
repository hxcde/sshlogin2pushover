#!/bin/bash
rm -rf /opt/push
rm /usr/local/bin/sshlogin.sh
grep -v "session optional pam_exec.so seteuid /usr/local/bin/sshlogin.sh" /etc/pam.d/sshd > /etc/pam.d/tmpfile
mv /etc/pam.d/tmpfile /etc/pam.d/sshd
echo sshlogin2pushover uninstalled