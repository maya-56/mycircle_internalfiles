adb -s %1 root
adb -s %1 remount
adb -s %1 reboot

waitfor SomethingThatIsNeverHappening /t 50

adb -s %1 root
adb -s %1 remount
adb -s %1 shell input keyevent 4
adb -s %1 shell input keyevent 4
adb -s %1 shell rm -rf /system/app/LauncherH313/
adb -s %1 shell rm -rf /system_ext/priv-app/Settings/Settings.apk
adb -s %1 shell  rm -rf /vendor/app/DLNA
adb -s %1 shell  rm -rf /vendor/app/Miracast
adb -s %1 shell  rm -rf /vendor/app/VideoPlayer
adb -s %1 shell  rm -rf /vendor/app/RemoteIME
adb -s %1 shell  rm -rf /product/app/Browser2
adb -s %1 shell  rm -rf /product/app/Camera2
adb -s %1 shell  rm -rf /product/app/DeskClock
adb -s %1 shell  rm -rf /product/app/ExoPlayer
adb -s %1 shell  rm -rf /product/app/Gallery2
adb -s %1 shell  rm -rf /product/app/Music
adb -s %1 shell  rm -rf /vendor/preinstall/SmartTubeNext.apk
adb -s %1 shell  rm -rf /vendor/preinstall/emotn.store.appstore.apk
adb -s %1 shell  rm -rf /vendor/preinstall/Xplore.apk
adb -s %1 shell  rm -rf /vendor/preinstall/Prime_Video.apk
adb -s %1 shell  rm -rf /vendor/preinstall/NetFlix.apk
adb -s %1 shell  rm -rf /vendor/preinstall/AirScreen.apk
adb -s %1 shell  rm -rf /vendor/preinstall/Disney+.apk
adb -s %1 shell  rm -rf /vendor/preinstall/CetusPlay_For_TV.apk
adb -s %1 shell  rm -rf /vendor/preinstall/kdplayer.apk
adb -s %1 shell  rm -rf /vendor/preinstall/YouTube.apk
adb -s %1 uninstall com.ionitech.airscreen
adb -s %1 uninstall com.teamsmart.videomanager.tv
adb -s %1 uninstall com.google.android.youtube.tv
adb -s %1 uninstall com.amazon.avod.thirdpartyclient
adb -s %1 uninstall com.cetusplay.remoteservice
adb -s %1 uninstall org.xbmc.kodi
adb -s %1 uninstall com.disney.disneyplus
adb -s %1 uninstall com.netflix.mediaclient
adb -s %1 uninstall com.lonelycatgames.Xplore
adb -s %1 uninstall com.overseas.store.appstore

adb -s %1 push %4\bootanimation.zip /system/media/bootanimation.zip

adb -s %1 push %4\privapp-permissions-platform.xml /system/etc/permissions/

adb -s %1 shell  mkdir /system/priv-app/MyCircleTvapp
adb -s %1 push %2 /system/priv-app/MyCircleTvapp/MyCircleTvapp.apk
adb -s %1 push %4\keylayout /system/vendor/usr/
adb -s %1 push %3 /mnt/vendor/odm_ext/logo_files/

adb -s %1 shell chmod 755 /system/priv-app/MyCircleTvapp
adb -s %1 shell chmod 644 /system/priv-app/MyCircleTvapp/MyCircleTvapp.apk

adb -s %1 shell mkdir -p /system/priv-app/MyCircleBleapp
adb -s %1 shell mkdir -p /system/priv-app/MyCircleschdular
adb -s %1 shell mkdir -p /system/priv-app/MyCircleBleapp/lib/arm
adb -s %1 shell mkdir -p /storage/emulated/0/background_video/

adb -s %1 push %4\MyCircleBleapp.apk /system/priv-app/MyCircleBleapp/MyCircleBleapp.apk
adb -s %1 push %4\libnative_key_control.so /system/private-app/MyCircleBleapp/lib/arm
adb -s %1 push %4\back_video.mov /storage/emulated/0/background_video/

adb -s %1 shell settings put global hdmi_control_enabled 1

adb -s %1 push %4\MyCircleschdular.apk /system/priv-app/MyCircleschdular/MyCircleschdular.apk


adb -s %1 shell chmod 755 /system/priv-app/MyCircleBleapp
adb -s %1 shell chmod 644 /system/priv-app/MyCircleBleapp/MyCircleBleapp.apk

adb -s %1 shell chmod 755 /system/priv-app/MyCircleschdular
adb -s %1 shell chmod 644 /system/priv-app/MyCircleschdular/MyCircleschdular.apk

adb -s %1 shell chmod 777 /storage/emulated/0/background_video/back_video.mov

adb -s %1 shell chmod 777 /system/vendor/usr/keylayout/
adb -s %1 install %4\Launcher.apk
::adb -s %1 install %4\Keyboard.apk
::adb -s %1 shell ls -la /system/priv-app/
::adb -s %1 shell ls -la /system/priv-app/MyCircleTvapp/
adb -s %1 reboot

waitfor SomethingThatIsNeverHappening /t 33

adb -s %1 install -d %4\MyCircleBleapp.apk
adb -s %1 install -d %4\MyCircleBleapp.apk

adb -s %1 reboot

::adb -s %1 shell input keyevent KEYCODE_ENTER



