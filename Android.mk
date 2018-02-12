# Copyright (C) 2018 You-Sheng Yang
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

fmtools_version := \
  $(shell grep AC_INIT $(LOCAL_PATH)/configure.ac | \
          sed -E 's/^.*([0-9]+\.[0-9]+\.[0-9]+).*/\1/')

include $(CLEAR_VARS)
LOCAL_MODULE := fm
LOCAL_SRC_FILES = fm.c fmlib.c fmlib.h
LOCAL_CFLAGS := -DVERSION=\"$(strip $(fmtools_version))\"
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := fmscan
LOCAL_SRC_FILES = fmscan.c fmlib.c fmlib.h
LOCAL_CFLAGS := -DVERSION=\"$(strip $(fmtools_version))\"
include $(BUILD_EXECUTABLE)
