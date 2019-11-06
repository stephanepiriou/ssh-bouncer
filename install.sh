#!/usr/bin/env bash

make 

cp ssh-bouncer /usr/local/bin/ssh-bouncer
chown root.root /usr/local/bin/ssh-bouncer
chmod 755 /usr/local/bin/ssh-bouncer

cp ssh-bouncer.sh /usr/local/bin/ssh-bouncer.sh
chown root.root /usr/local/bin/ssh-bouncer.sh
chmod 755 /usr/local/bin/ssh-bouncer.sh

cp ssh-bouncer.service /etc/systemd/system/ssh-bouncer.service
chown root.root /etc/systemd/system/ssh-bouncer.service
chmod 755 /etc/systemd/system/ssh-bouncer.service

systemctl enable ssh-bouncer
systemctl start ssh-bouncer 

