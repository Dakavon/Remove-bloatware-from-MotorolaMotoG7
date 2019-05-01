#!/bin/bash
# Proposal script of the bloatware to be deleted on a Motorola Moto G7
#
# Look for devices:         adb devices
# Open up shell:            adb shell
#   List installations:     pm list packages
#   List third-party apps:  pm list packages -3 
#   List system apps:       pm list packages -s
#   Search for package:     pm list packages | grep yxz
#
# Finally remove app from device (be careful!):
#   pm uninstall -k --user 0 ....
#
# When your device is not working anymore you can reset it to the factory state and start over..

#Remove facebook services
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.katana
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager

#Remove useless Google apps
adb shell pm uninstall -k --user 0 com.google.ar.core
adb shell pm uninstall -k --user 0 com.google.ar.lens
adb shell pm uninstall -k --user 0 com.google.android.tts
adb shell pm uninstall -k --user 0 com.google.android.ims
adb shell pm uninstall -k --user 0 com.android.chrome
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.files
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.music
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.slides
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.sheets
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines

echo "Done."
