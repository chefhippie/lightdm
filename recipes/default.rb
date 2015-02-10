#
# Cookbook Name:: lightdm
# Recipe:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

case node["platform_family"]
when "suse"
  include_recipe "zypper"

  zypper_repository node["lightdm"]["zypper"]["alias"] do
    uri node["lightdm"]["zypper"]["repo"]
    key node["lightdm"]["zypper"]["key"]
    title node["lightdm"]["zypper"]["title"]

    action :add

    only_if do
      node["lightdm"]["zypper"]["enabled"]
    end
  end
end

node["lightdm"]["packages"].each do |name|
  package name do
    action :install
  end
end

case node["lightdm"]["greeter_name"]
when "webkit"
  include_recipe "lightdm::webkit"
when "gtk"
  include_recipe "lightdm::gtk"
else
  log "Unknown greeter name for lightdm" do
    level :fatal
  end
end

file node["lightdm"]["config_file"] do
  action :delete
end

template node["lightdm"]["keys_file"] do
  source "keys.conf.erb"
  owner "root"
  group "root"
  mode 0644

  variables(
    node["lightdm"]
  )
end

template node["lightdm"]["users_file"] do
  source "users.conf.erb"
  owner "root"
  group "root"
  mode 0644

  variables(
    node["lightdm"]
  )
end

service "lightdm" do
  service_name node["lightdm"]["service_name"]
  action [:enable, :start]
end
