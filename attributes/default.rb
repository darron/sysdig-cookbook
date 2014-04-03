# encoding: utf-8
#
# Cookbook Name:: sysdig
# Attributes:: default
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

default['sysdig']['package']['distribution'] = 'stable-$(ARCH)/'
default['sysdig']['package']['repo_url'] = 'http://download.draios.com/stable/deb'
default['sysdig']['package']['repo_key'] = 'https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public'
