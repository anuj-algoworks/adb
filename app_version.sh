read -p "keyword for filter app name : " NAME
if [ -z "$NAME" ]
then
adb shell dumpsys package | awk '/^[ ]*Package \[.*\] (.*)/ { i = index($0, "[") + 1; pkg = substr($0, i, index($0, "]") - i); } /[ ]*versionName=/ { { print pkg "\t" substr($0, index($0, "=") + 1); pkg = ""; } }'

else
adb shell dumpsys package | awk '/^[ ]*Package \[.*\] (.*)/ { i = index($0, "[") + 1; pkg = substr($0, i, index($0, "]") - i); } /[ ]*versionName=/ { { print pkg "\t" substr($0, index($0, "=") + 1); pkg = ""; } }' | grep $NAME

fi

echo "enjoy a day"



