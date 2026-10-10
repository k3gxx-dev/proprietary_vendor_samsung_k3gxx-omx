# Copyright (C) 2026 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

define k3gxx-omx-prebuilt
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_MULTILIB := 32
LOCAL_CHECK_ELF_FILES := false
ifneq ($(strip $(3)),)
LOCAL_MODULE_RELATIVE_PATH := $(3)
endif
include $(BUILD_PREBUILT)
endef

$(eval $(call k3gxx-omx-prebuilt,libExynosOMX_Core,proprietary/lib/libExynosOMX_Core.so,))
$(eval $(call k3gxx-omx-prebuilt,libExynosOMX_Resourcemanager,proprietary/lib/libExynosOMX_Resourcemanager.so,))
$(eval $(call k3gxx-omx-prebuilt,libOMX.Exynos.AVC.Decoder,proprietary/lib/omx/libOMX.Exynos.AVC.Decoder.so,omx))
$(eval $(call k3gxx-omx-prebuilt,libOMX.Exynos.AVC.Encoder,proprietary/lib/omx/libOMX.Exynos.AVC.Encoder.so,omx))
$(eval $(call k3gxx-omx-prebuilt,libOMX.Exynos.MPEG4.Decoder,proprietary/lib/omx/libOMX.Exynos.MPEG4.Decoder.so,omx))
$(eval $(call k3gxx-omx-prebuilt,libOMX.Exynos.MPEG4.Encoder,proprietary/lib/omx/libOMX.Exynos.MPEG4.Encoder.so,omx))
$(eval $(call k3gxx-omx-prebuilt,libOMX.Exynos.VP8.Decoder,proprietary/lib/omx/libOMX.Exynos.VP8.Decoder.so,omx))
$(eval $(call k3gxx-omx-prebuilt,libOMX.Exynos.VP8.Encoder,proprietary/lib/omx/libOMX.Exynos.VP8.Encoder.so,omx))
