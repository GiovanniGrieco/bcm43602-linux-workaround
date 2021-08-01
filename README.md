# Broadcom BCM43602 workaround

This is a quick and dirty trick to take control of this misbehaving network
card.

Scripts are tested on Fedora 29. If you have any problems, please file an issue
here on GitHub.

Note that I did not want to package this workaround because it's, well, _dirty_.
It does not fix the problem, just makes things bearable.

## Install
```
# ./install.sh
```
Remember to blacklist the kernel module at system startup. Appending `modprobe.blacklist=brcmfmac` in GRUB config is sufficient.

## Control the service
```
# systemctl start broadcom
# systemctl stop broadcom
# systemctl restart broadcom
```

## Uninstall
```
# systemctl stop broadcom
# systemctl disable broadcom
# rm /usr/local/bin/broadcomctl
# rm /etc/systemd/system/broadcom.service
```

