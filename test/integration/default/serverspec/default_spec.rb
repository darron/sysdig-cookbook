# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'sysdig::default' do
  describe package('sysdig') do
    it { should be_installed }
  end
end
