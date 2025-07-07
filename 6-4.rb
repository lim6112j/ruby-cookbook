#!/usr/bin/env ruby
# frozen_string_literal: false

require 'pp'
# remove hash element
class Hash
  def delete_value(value)
    delete_if { |_k, v| v == value }
  end
end

h = { a: 1, b: 2, c: 3, d: 4, e: 5 }
pp h.delete_value(3) # {:a=>1, :b=>2, :d=>4, :e=>5}
