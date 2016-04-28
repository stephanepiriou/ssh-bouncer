#!/bin/sh

[ -z "$1" ] && exit
ip=$(echo $1 | cut -d ':' -f 4)
ipinfo=$(wget -qO - http://ipinfo.io/$ip)
city=$(echo $ipinfo | cut -d '"' -f 12)
country=$(echo $ipinfo | cut -d '"' -f 20)

#if [ -z "$city" ] ; then
#    message="SSH+hack+attempt+from+$ip.+From+$country+with+love."
#else
#    message="SSH+hack+attempt+from+$ip+($city,+$country)."
#fi
#wget --no-check-certificate -qO - https://maker.ifttt.com/trigger/tweet/with/key/w34dslias088?value1="$message"

echo "$(date "+%Y.%m.%d %H:%M:%S"), $ip, $city, $country" >> /opt/var/log/ssh-bouncer.csv
