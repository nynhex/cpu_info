#!/usr/bin/env ruby
cpu_hash = Hash.new
cpu_info = File.read('cpuinfo')
cpu_info.each_line do |i|
  key, val = i.split(":")
  cpu_hash.store("#{key}", "#{val}")
end
cpu_hash.each do |k, v|
  puts "#{k}" "#{v}"
end
