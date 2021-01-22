#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2020 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="gta4xlwifi"

    # R11
    export FOX_R11="1"
    export FOX_BUILD_TYPE="Stable"
    export FOX_VERSION="R11.0_1"
    export OF_USE_TWRP_SAR_DETECT="1"
    export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"

    export TARGET_ARCH="arm64"

    export OF_SCREEN_H=2000
    export TW_DEFAULT_LANGUAGE="en"
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
    export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
    export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/13520000.ufs/by-name/recovery"
    export OF_NO_SAMSUNG_SPECIAL=1

    #export FOX_DRASTIC_SIZE_REDUCTION=1
    export OF_MAINTAINER=Nubianprince

    export FOX_ASH_IS_BASH="1"
    export FOX_REPLACE_BUSYBOX_PS="1"
    export FOX_USE_BASH_SHELL="1"
    export FOX_USE_LZMA_COMPRESSION="1"
    export FOX_USE_NANO_EDITOR="1"
    export FOX_USE_TAR_BINARY="1"
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
    export FOX_USE_ZIP_BINARY="1"
    export OF_AB_DEVICE="1"
    
    
    export OF_KEEP_FORCED_ENCRYPTION="1"
    export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
    export OF_TWRP_COMPATIBILITY_MODE="1"
    export OF_USE_MAGISKBOOT="1"
    export OF_USE_MAGISKBOOT="1"
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"



    # cleanup
    export FOX_REMOVE_AAPT=1
    export FOX_DELETE_AROMAFM=1
    export FOX_DELETE_INITD_ADDON=1

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi

add_lunch_combo omni_"$FDEVICE"-eng

