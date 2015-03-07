#
# Cookbook Name:: basic-pack
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
%w{
  git
  screen
  rubygems
  tcpdump
  yum-utils
  docker
  bind-utils
  wget
  telnet
  mercurial
  tcpflow
}.each do |pkg|
  package pkg do
    action :install
  end
end

service "docker" do
  action   [ :enable, :start ]
end
