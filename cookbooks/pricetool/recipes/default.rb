#
# Cookbook Name:: pricetool
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe  'build-essential'
include_recipe 	'apt'
include_recipe 	'chef-client'
include_recipe 	'rbenv::default'
include_recipe 	'rbenv::ruby_build'

package 'curl' do
  action 				:install
end

user node[:pricetool][:user] do
  home 					"/home/#{node[:pricetool][:user]}"
  shell 				'/bin/bash'
  action 				:create
end

group node[:pricetool][:group] do
  action 				:create
  members 			node[:pricetool][:user]
end

rbenv_ruby node[:pricetool][:ruby] do
  global 				true
end

rbenv_gem "bundler" do
  ruby_version 	node[:pricetool][:ruby]
end