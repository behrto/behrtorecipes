#!/bin/sh
currentuser=`stat -f "%Su" /dev/console` #get currently logged in User
CFBundleVersion=""
if [ -f "/Applications/zoom.us.app/Contents/Info.plist" ]; then
    CFBundleVersion=$(defaults read "/Applications/zoom.us.app/Contents/Info.plist" CFBundleVersion)
elif [ -f "/Users/$currentuser/Applications/zoom.us.app/Contents/Info.plist" ]; then
    CFBundleVersion=$(defaults read "/Users/$currentuser/Applications/zoom.us.app/Contents/Info.plist" CFBundleVersion)
fi
echo "<result>$CFBundleVersion</result>"
exit 0