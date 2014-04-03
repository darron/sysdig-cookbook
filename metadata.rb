# encoding: utf-8
name             'sysdig'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures sysdig'
version          '0.2.0'
recipe           'sysdig::default', 'Installs/configures sysdig'

depends 'chef-sugar'
depends 'apt'
