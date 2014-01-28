#!/usr/bin/ruby

require mini_smtp_server

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