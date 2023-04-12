if [ "$PAM_TYPE" != "close_session" ]; then
        host="`hostname`"
        message="`env`"
        sh /opt/push/pushover.sh -u ${userkey} -a ${apikey} "SSH Login: $PAM_USER from $PAM_RHOST on $host"
fi
