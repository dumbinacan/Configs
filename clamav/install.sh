#!/bin/zsh
# I stupidly deleted this file so fuck me
# Following https://wiki.archlinux.org/title/ClamAV




if [[ "$EUID" = 0 ]]; then

    read -q "?Have you edited clamav-clamonacc.service? [y/N] "
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Proceding with the installation"
    else
        echo "be sure to run:"
        echo "# systemctl edit --full unit clamav-clamonacc.service"
        echo "and add --fdpass to the line shown below"
        echo '"ExecStart=/usr/sbin/clamonacc -F --fdpass --log=/var/log/clamav/clamonac"'
        exit
    fi
else
	echo "this script needs to be ran as root"
    echo "MAKE SURE YOU EDIT clamav-clamonacc before running this!"
    echo "run:"
    echo "# systemctl edit --full unit clamav-clamonacc.service"
    echo "and add --fdpass to the line shown below"
    echo '"ExecStart=/usr/sbin/clamonacc -F --fdpass --log=/var/log/clamav/clamonac"'
    exit
fi
# install software if needed
pacman -S clamav

# give clamav sudo rights
echo "clamav ALL = (ALL) NOPASSWD: SETENV: /usr/bin/notify-send" > /etc/sudoers.d/clamav

# back up initial configs
mv /etc/clamav/freshclam.conf /etc/clamav/freshclam.conf.$(date +%Y-%m-%d).bak
mv /etc/clamav/clamd.conf /etc/clamav/clamd.conf.$(date +%Y-%m-%d).bak

# inject my confs
ln -s $(pwd)/clamd.conf /etc/clamav/clamd.conf
ln -s $(pwd)/freshclam.conf /etc/clamav/freshclam.conf
ln -s $(pwd)/virus-event.bash /etc/clamav/virus-event.bash

# update the database
freshclam
# setup for auto updates
touch /var/log/clamav/freshclam.log
chmod 600 /var/log/clamav/freshclam.log
chown clamav /var/log/clamav/freshclam.log
# enable auto update of server (every 2 hours)
systemctl enable --now clamav-freshclam

# TODO learn if I can learn how to do this with sed
# on access scan support
systemctl enable --now clamav-daemon.service
systemctl enable --now clamav-clamonacc.service
