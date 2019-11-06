#!/usr/bin/env bash

make 

cp ssh-bouncer /usr/local/bin/ssh-bouncer
chown root.root /usr/local/bin/ssh-bouncer
chmod 755 /usr/local/bin/ssh-bouncer

cp ssh-bouncer.sh /usr/local/bin/ssh-bouncer.sh
chown root.root /usr/local/bin/ssh-bouncer.sh
chmod 755 /usr/local/bin/ssh-bouncer.sh

echo "#!/bin/sh
/usr/local/bin/ssh-bouncer" >> /etc/init.d/ssh-bouncer

chmod 755 /etc/init.d/ssh-bouncer

/usr/local/bin/ssh-bouncer 

cd ..

rm -rf ssh-bouncer

return 0