#!/usr/bin/env ruby

require 'json'

host = JSON.parse(ENV['VCAP_APPLICATION'])['uris'][0]
port = JSON.parse(ENV['VCAP_SERVICES'])['harbor'][0]['credentials']['port']
connection_string = "Connect to the ZNC IRC bouncer at #{host}:#{port}"
alert_message = <<-eos

*****************************************************************

                 ATTENTION! ATTENTION! ATTENTION!

#{connection_string.center(65)}

                           User: admin
                           Pass: stackato

*****************************************************************

eos
puts alert_message
