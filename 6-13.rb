#!/usr/bin/env ruby
# frozen_string_literal: true

# 6-13.rb - A Ruby script to remap a hash based on another hash
class Hash
  def tied_with(hash)
    remap do |h, k, v|
      h[hash[k]] = v
    end.delete_if { |k, v| k.nil? || v.nil? }
  end

  def remap(hash = {})
    each { |k, v| yield hash, k, v }
    hash
  end
end
a = { 1 => 2, 3 => 4 }
b = { 1 => 'foo', 3 => 'bar' }
puts a.tied_with(b)
puts b.tied_with(a)
