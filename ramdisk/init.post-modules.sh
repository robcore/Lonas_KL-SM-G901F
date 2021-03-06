#!/system/bin/sh
#
# Copyright (c) 2015 Javier Sayago <admin@lonasdigital.com>
# Contact: javilonas@esp-desarrolladores.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

# Inicio
mount -o remount,rw -t auto /system/lib/modules/
mount -t rootfs -o remount,rw rootfs

cp -f -R /res/modules/*.ko /system/lib/modules/

sync

mount -t rootfs -o remount,ro rootfs
mount -o remount,ro -t auto /system/lib/modules/

