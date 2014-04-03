# encoding: utf-8
#
# Cookbook Name:: sysdig
# Recipe:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
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

include_recipe 'chef-sugar::default'

if ubuntu?

  apt_repository 'sysdig' do
    uri node['sysdig']['package']['repo_url']
    distribution node['sysdig']['package']['distribution']
    key node['sysdig']['package']['repo_key']
  end

  bash 'install kernel headers' do
    user 'root'
    cwd '/tmp'
    code <<-EOH
      apt-get -qq -y install linux-headers-$(uname -r)
    EOH
  end

  apt_package 'sysdig' do
    action :install
  end

end
