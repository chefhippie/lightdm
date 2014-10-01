#
# Cookbook Name:: lightdm
# Attributes:: gtk
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

default["lightdm"]["gtk"]["packages"] = %w(
  lightdm-gtk-greeter
  lightdm-gtk-greeter-branding-openSUSE
)

default["lightdm"]["gtk"]["config_file"] = "/etc/lightdm/lightdm-gtk-greeter.conf"
default["lightdm"]["gtk"]["logo"] = "/usr/share/pixmaps/lightdm-gtk-greeter-opensuse.png"
default["lightdm"]["gtk"]["background"] = "/usr/share/wallpapers/openSUSEdefault/contents/images/1600x1200.jpg"
default["lightdm"]["gtk"]["theme"] = "Adwaita"
default["lightdm"]["gtk"]["icon"] = ""
default["lightdm"]["gtk"]["font"] = ""
default["lightdm"]["gtk"]["xft_antialias"] = "true"
default["lightdm"]["gtk"]["xft_dpi"] = "96"
default["lightdm"]["gtk"]["xft_hintstyle"] = "slight"
default["lightdm"]["gtk"]["xft_rgba"] = "rgb"
default["lightdm"]["gtk"]["language_selector"] = "true"
