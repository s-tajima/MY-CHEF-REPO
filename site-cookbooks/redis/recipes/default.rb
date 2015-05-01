#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
%w{
  redis
}.each do |pkg|
  package pkg do
    action :install
  end
end

service "redis" do
  action   [ :enable, :start ]
end
