#!/usr/bin/env ruby

require 'rexml/syncenumerator'
enumerator = REXML::SyncEnumerator.new(%{Four seven}, %w{score years}, %w{and ago} )
enumerator.each do |row|
  row.each { |word| puts word }
  puts '---'
end
