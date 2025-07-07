#!/usr/bin/env ruby
# frozen_string_literal: false

# This code defines a custom hash method for certain classes to ensure
module ReliableHashable
  def hash
    object_id
  end
end

class ReliableHashableArray < Array
  include ReliableHashable
end
# Example usage:
coordinates = ReliableHashableArray.new([10, 5])
puts "coordinates hash : #{coordinates.hash}"
pp coordinates
treasure_map = { coordinates => 'jewels' }
pp treasure_map[coordinates]
coordinates.push(-5)
puts "coordinates hash : #{coordinates.hash}"
pp treasure_map[coordinates]
pp coordinates
