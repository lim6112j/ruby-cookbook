#!/usr/bin/env ruby

# frozen_string_literal: false

# “6.6 Keeping Multiple Values for the Same Hash Key”
hash = Hash.new { |h, k| h[k] = [] }
raw_data = [[1, 'a'], [1, 'b'], [1, 'c'],
            [2, 'a'], [2, %w[b c]],
            [3, 'c']]
multiple = raw_data.each_with_object(hash) { |arr, res| res[arr[0]] << arr[1] }
pp multiple

# The MultiValueHash class extends the
# Hash class to allow multiple values for the same key.
class MultiValueHash < Hash
  def []=(key, value)
    if key?(key)
      super(key, [value, self[key]].flatten)
    else
      super
    end
  end
end
hash2 = MultiValueHash.new
raw_data.each { |arr| hash2[arr[0]] = arr[1] }
pp hash2
