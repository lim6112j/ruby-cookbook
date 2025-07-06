#!/usr/bin/env ruby
# frozen_string_literal: true

# This code defines a method to safely invert a hash, allowing for values that are arrays.
class Hash
  def safe_invert
    new_hash = {}
    each do |k, v|
      if v.is_a? Array
        v.each { |item| new_hash.add_or_append(item, k) }
      else
        new_hash.add_or_append(v, k)
      end
    end
    new_hash
  end

  def add_or_append(key, value)
    self[key] = if key?(key)
                  [value, self[key]].flatten
                else
                  value
                end
  end
end
phone_directory = { 'Alice' => '555-1212',
                    'Bob' => '555-1313',
                    'Carol' => '555-1313',
                    'Mallory' => '111-1111',
                    'Ted' => '555-1212' }

puts phone_directory.invert
puts phone_directory.safe_invert
