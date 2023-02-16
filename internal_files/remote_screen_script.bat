adb -s %1 install %5\TeamViewerHost.apk
adb -s %1 install %5\QuickSupport.apk

adb -s %1 shell am start -n com.teamviewer.host.market/com.teamviewer.host.ui.HostActivity

waitfor WaitforappinitandRestart /t 10

adb -s %1 shell input keyevent 4

adb -s %1 shell am start -n com.teamviewer.host.market/com.teamviewer.host.ui.HostActivity

adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20
adb -s %1 shell input text %2
adb -s %1 shell input keyevent 20
adb -s %1 shell input text %3
adb -s %1 shell input keyevent 20
adb -s %1 shell input text %4
adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 66


waitfor WaitforInitandrequesttpapporove /t 20

adb -s %1 shell input keyevent 66
adb -s %1 shell input keyevent 66


waitfor Waitforgmailaccountapprove /t 45

adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20
adb -s %1 shell input keyevent 20

adb -s %1 shell input keyevent 66

waitfor WaitforFinalApprovalAndpermissionRequest /t 30

adb -s %1 shell input keyevent 66
adb -s %1 shell input keyevent 4
