```
balooctl disable
systemctl mask lvm2-monitor.service
systemctl mask systemd-udev-settle.service
rm /usr/share/dbus-1/services/org.kde.kwalletd.service
systemctl mask ModemManager.service
systemctl mask lvm2-*.service
localectl set-x11-keymap us,ru asus_laptop
comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)
```
