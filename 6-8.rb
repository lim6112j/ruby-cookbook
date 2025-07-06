#!/usr/bin/env ruby
# frozen_string_literal: true

gem 'activesupport'
require 'active_support'
h = ActiveSupport::OrderedHash.new
h[1] = 1
h['second'] = 2
h[:third] = 3
puts h.keys
puts h.values
h.each { |k, v| puts "#{k} counting number is #{v}" }
