#
# Cookbook Name:: lightdm
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["lightdm"]["packages"] = %w(
  lightdm
)

default["lightdm"]["service_name"] = "xdm"
default["lightdm"]["sysconfig_file"] = "/etc/sysconfig/displaymanager"
default["lightdm"]["users_file"] = "/etc/lightdm/users.conf"
default["lightdm"]["keys_file"] = "/etc/lightdm/keys.conf"
default["lightdm"]["config_file"] = "/etc/lightdm/lightdm.conf"
default["lightdm"]["greeter_name"] = "webkit"
default["lightdm"]["xserver"] = "Xorg"
default["lightdm"]["manager"] = "lightdm"
default["lightdm"]["remote_access"] = "no"
default["lightdm"]["remote_root"] = "no"
default["lightdm"]["starts_xserver"] = "yes"
default["lightdm"]["tcp_open"] = "no"
default["lightdm"]["autologin_user"] = ""
default["lightdm"]["passwordless"] = "no"
default["lightdm"]["ad_integration"] = "no"
default["lightdm"]["shutdown"] = "auto"
default["lightdm"]["minimum_uid"] = 1000
default["lightdm"]["hidden_users"] = %w(nobody)
default["lightdm"]["hidden_shells"] = %w(/bin/false /sbin/nologin)
default["lightdm"]["keyrings"] = {}
