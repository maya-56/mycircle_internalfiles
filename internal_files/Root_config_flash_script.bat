adb -s %1 root
adb -s %1 remount
adb -s %1 reboot

waitfor SomethingThatIsNeverHappening /t 50

adb -s %1 root
adb -s %1 remount
adb -s %1 shell input keyevent 4
adb -s %1 shell input keyevent 4
adb -s %1 shell rm -rf /system/app/LauncherH313/
adb -s %1 push %4\bootanimation.zip /system/media/bootanimation.zip

adb -s %1 push %4\privapp-permissions-platform.xml /system/etc/permissions/
adb -s %1 shell mkdir /system/priv-app/MyCircleTvapp
adb -s %1 push %2 /system/priv-app/MyCircleTvapp/MyCircleTvapp.apk
adb -s %1 push %3 /mnt/vendor/odm_ext/logo_files/
adb -s %1 shell chmod 755 /system/priv-app/MyCircleTvapp
adb -s %1 shell chmod 644 /system/priv-app/MyCircleTvapp/MyCircleTvapp.apk
adb -s %1 install %4\Launcher.apk
adb -s %1 install %4\Keyboard.apk
adb -s %1 shell ls -la /system/priv-app/
adb -s %1 shell ls -la /system/priv-app/MyCircleTvapp/
adb -s %1 reboot