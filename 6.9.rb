#!/usr/bin/env ruby
# frozen_string_literal: true

h = {}
h[:name] = 'Robert'
h[:nickname] = 'Bob'
h[:age] = 43
h[:email_addresses] = { home: 'bob@example.com', work: 'robert@example.com' }
puts h
require 'pp'
pp h
require 'yaml'
puts h.to_yaml
require 'json'
puts h.to_json
