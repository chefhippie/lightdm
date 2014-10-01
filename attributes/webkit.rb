#
# Cookbook Name:: lightdm
# Attributes:: webkit
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

default["lightdm"]["webkit"]["packages"] = %w(
  lightdm-webkit-greeter
  lightdm-webkit-greeter-branding-bevel
)

default["lightdm"]["webkit"]["config_file"] = "/etc/lightdm/lightdm-webkit-greeter.conf"
default["lightdm"]["webkit"]["theme"] = "bevel"
default["lightdm"]["webkit"]["xft_antialias"] = "true"
default["lightdm"]["webkit"]["xft_dpi"] = "96"
default["lightdm"]["webkit"]["xft_hintstyle"] = "slight"
default["lightdm"]["webkit"]["xft_rgba"] = "rgb"
