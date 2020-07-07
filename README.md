# adb
use of adb  command in android world

### display only third party apps
adb shell pm list packages -3

### show only third party apps
adb shell pm list packages -3

### Grant all permissions listed in the app manifest
adb install -g test.apk

### record mobile screen via adb 
adb shell screenrecord /sdcard/video.mp4 

### screenshot of mobile save to desktop/laptop via adb
adb exec-out screencap -p > screen.png

### switch off device via adb
adb shell reboot -p

### show recent app via adb
adb shell input keyevent KEYCODE_APP_SWITCH


# GIT
## to change commit message([link to git!](https://docs.github.com/en/github/committing-changes-to-your-project/changing-a-commit-message))
 1. On the command line, navigate to the repository that contains the commit you want to amend.
 2. Type git commit --amend and press Enter.
 3. In your text editor, edit the commit message, and save the commit.





