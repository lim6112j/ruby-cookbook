#!/usr/bin/env ruby
# frozen_string_literal: true

class StringHolder
  attr_reader :string

  def initialize(str)
    @string = str
  end

  def ==(other)
    @string == other.string
  end

  def hash
    @string.hash
  end
end

a = StringHolder.new('The same string.')
b = StringHolder.new('The same string.')
p a == b
p a.hash
p b.hash
