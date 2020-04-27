#!/bin/sh -e

xcconfig=$(mktemp /tmp/static.xcconfig.XXXXXX)
trap 'rm -f "$xcconfig"' INT TERM HUP EXIT

echo "MACH_O_TYPE = staticlib" >> $xcconfig
echo "DEBUG_INFORMATION_FORMAT = dwarf" >> $xcconfig
echo "IPHONEOS_DEPLOYMENT_TARGET = 10.0" >> $xcconfig
echo "ENABLE_BITCODE = NO" >> $xcconfig

export XCODE_XCCONFIG_FILE="$xcconfig"

carthage bootstrap --platform iOS --cache-builds --no-use-binaries

