# Copyright (C) 2017 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),x2)

include $(CLEAR_VARS)
LOCAL_MODULE := QtiTelephonyService
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/app/QtiTelephonyService/QtiTelephonyService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TimeService
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/app/TimeService/TimeService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := datastatusnotification
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/app/datastatusnotification/datastatusnotification.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := embms
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/app/embms/embms.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fastdormancy
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/app/fastdormancy/fastdormancy.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shutdownlistener
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/app/shutdownlistener/shutdownlistener.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_le_x2_mdss_dsi_sharp_qhd_dualdsi_cmd
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/etc/qdcm_calib_data_le_x2_mdss_dsi_sharp_qhd_dualdsi_cmd.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_le_x2_mdss_dsi_truly_qhd_dualdsi_cmd_pvt
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/etc/qdcm_calib_data_le_x2_mdss_dsi_truly_qhd_dualdsi_cmd_pvt.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_mdss_dsi_sharp_qhd_dualdsi_cmd
LOCAL_MODULE_OWNER := leeco
LOCAL_SRC_FILES := proprietary/etc/qdcm_calib_data_mdss_dsi_sharp_qhd_dualdsi_cmd.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so && popd > /dev/null)
endif
