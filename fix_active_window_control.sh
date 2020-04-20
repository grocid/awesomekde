#!/bin/sh
FILENAME="/usr/share/plasma/plasmoids/org.kde.activeWindowControl/contents/ui/AppMenu.qml"
sed -e 's/Font.Bold/Font.Heavy/g' $FILENAME > $FILENAME
