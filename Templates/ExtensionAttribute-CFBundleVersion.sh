#!/bin/sh
currentuser=`stat -f "%Su" /dev/console` #get currently logged in User

CFBundleVersion=""
if [ -f "/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" ]; then
    CFBundleVersion=$(defaults read "/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" CFBundleVersion)
elif [ -f "/Users/$currentuser/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" ]; then
    CFBundleVersion=$(defaults read "/Users/$currentuser/Applications/%JSS_INVENTORY_NAME%/Contents/Info.plist" CFBundleVersion)
fi
echo "<result>$CFBundleVersion</result>"
exit 0