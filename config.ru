#
# Copyright (c) 2013 Charles H Martin, PhD
#  
#  Calculated Content 
#  http://calculatedcontent.com
#  charles@calculatedcontent.com
#
require 'rubygems'
require 'bundler/setup'
require 'qless'
require 'qless/server'

log = File.new("logs/sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

client = Qless::Client.new(:host => "localhost", :port => 6379)
run Qless::Server.new(client)