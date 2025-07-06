#!/usr/bin/env ruby
# frozen_string_literal: true

require 'time'
require 'pp'
click_counts = {}
1.upto(30) { |i| click_counts[Time.parse("2006-09-#{i}")] = rand(400..1099) }
pp click_counts
low_click_counts = click_counts.select { |_key, value| value < 500 }
pp low_click_counts
low_click_counts_hash = click_counts.each_with_object({}) do |kv, h|
  k, v = kv
  h[k] = v if v < 450
end
pp low_click_counts_hash
low_click_counts_hash2 = Hash[*low_click_counts.flatten]
pp low_click_counts_hash2
