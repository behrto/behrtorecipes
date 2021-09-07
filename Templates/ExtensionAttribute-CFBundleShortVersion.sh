#!/bin/sh
currentuser=`stat -f "%Su" /dev/console` #get currently logged in User

CFBundleShortVersionString=""
if [ -f "/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" ]; then
    CFBundleShortVersionString=$(defaults read "/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" CFBundleShortVersionString)
elif [ -f "/Users/$currentuser/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" ]; then
    CFBundleShortVersionString=$(defaults read "/Users/$currentuser/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" CFBundleShortVersionString)
fi
echo "<result>$CFBundleShortVersionString</result>"
exit 0