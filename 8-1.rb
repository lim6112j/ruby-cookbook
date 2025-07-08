#!/usr/bin/env ruby
# frozen_string_literal: true

a_block = ->(x) { puts x }
# a_block = lambda { |x| puts x }
b_block = proc { |x| puts x }
# b_block = Proc.new { |x| puts x }
a_block.call('Hello, world!')
b_block.call('Hello, world!')
