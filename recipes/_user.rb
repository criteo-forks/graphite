#
# Cookbook:: graphite
# Recipe:: _user
#
# Copyright:: 2014-2016, Heavy Water Software Inc.
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

group node['graphite']['group'] do
  system true
  action :create
end

user node['graphite']['user'] do
  system true
  group node['graphite']['group']
  home node['graphite']['base_dir']
  shell '/bin/false'
  manage_home true
  action :create
end
