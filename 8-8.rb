#!/usr/bin/env ruby

1.upto(10) do |x|
  puts x
  break if x == 3
end

a_block = proc do |x|
  puts x
  break if x == 3

  puts x + 2
end

a_block.call(5)
a_block.call(3)

def find(*paths)
  paths.each do |p|
    catch(:prune) do
      # process p as a file or directory
    end
    # When you call fine.prune you'll end up here
  end
end

def prune
  throw :prune
end
