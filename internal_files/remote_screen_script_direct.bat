adb install TeamViewerHost.apk
adb install QuickSupport.apk

adb shell am start -n com.teamviewer.host.market/com.teamviewer.host.ui.HostActivity

waitfor WaitforInitandrequesttpapporove /t 10
adb shell input keyevent 4

adb shell am start -n com.teamviewer.host.market/com.teamviewer.host.ui.HostActivity

adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input text "mycircleremoteaccess@gmail.com"
adb shell input keyevent 20
adb shell input text "mycircle@123"
adb shell input keyevent 20
adb shell input text "Demo_device123"
adb shell input keyevent 20
adb shell input keyevent 66

waitfor WaitforInitandrequesttpapporove /t 20

adb shell input keyevent 66
adb shell input keyevent 66

waitfor Waitforgmailaccountapprove /t 45

adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20

adb shell input keyevent 66

waitfor WaitforFinalApprovalAndpermissionRequest /t 30

adb shell input keyevent 66
adb shell input keyevent 4
