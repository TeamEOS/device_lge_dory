#!/system/bin/sh
/system/bin/mount -o remount,rw /system
/system/bin/sleep 2
/system/bin/cat /sbin/su > /system/xbin/su
/system/bin/cat /sbin/su > /system/xbin/daemonsu
/system/bin/cat /sbin/install-recovery.sh > /system/etc/install-recovery.sh
/system/bin/chown 0.0 /system/xbin/su
/system/bin/chown 0.0 /system/xbin/daemonsu
/system/bin/chown 0.0 /system/etc/install-recovery.sh
/system/bin/chmod 06755 /system/xbin/su
/system/bin/chmod 06755 /system/xbin/daemonsu
/system/bin/chmod 755 /system/etc/install-recovery.sh
/system/bin/sync
/system/bin/sleep 3
/system/bin/reboot
