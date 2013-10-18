#
# Cookbook Name:: pricetool
# Recipe:: mysql_master
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe		'recipe[mysql::ruby]'
include_recipe    'recipe[mysql::server]'
include_recipe    'recipe[database::master]'