#!/usr/bin/env ruby

require 'json'

external_port = JSON.parse(ENV['VCAP_SERVICES'])['harbor'][0]['credentials']['port']
alert_message = <<-eos
**********************************************************************

                   ATTENTION! ATTENTION! ATTENTION!

               Connect to the ZNC IRC bouncer using the
                      external harbor port #{external_port}

**********************************************************************
eos
puts alert_message
