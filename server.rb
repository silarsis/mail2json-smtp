#!/usr/bin/ruby
#
# This server will take email via SMTP, and push it into Kafka.

require 'mini-smtp-server'

class StdoutSmtpServer < MiniSmtpServer

  def new_message_event(message_hash)
    puts "# New email received:"
    puts "-- From: #{message_hash[:from]}"
    puts "-- To:   #{message_hash[:to]}"
    puts "--"
    puts "-- " + message_hash[:data].gsub(/\r\n/, "\r\n-- ")
    puts
  end

end

server = StdoutSmtpServer.new
server.start
server.join