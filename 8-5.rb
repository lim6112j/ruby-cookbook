#!/usr/bin/env ruby
# frozen_string_literal: true

# This code defines a simple tree structure where each node can have children.
class Tree
  attr_reader :value

  def initialize(value)
    @value = value
    @children = []
  end

  def <<(value)
    subtree = Tree.new(value)
    @children << subtree
    subtree
  end

  def each(&block)
    yield value
    @children.each do |child_node|
      child_node.each(&block)
    end
  end
end

t = Tree.new('Parent')
child1 = t << 'Child 1'
child1 << 'Grandchild 1.1'
child1 << 'Grandchild 1.2'
child2 = t << 'Child 2'
child2 << 'Grandchild 2.1'

t.each { |x| puts x }

# This code defines a method for the Array class that allows you to iterate
# over the array from both ends.
class Array
  def each_from_both_sides
    front_index = 0
    back_index = length - 1
    while front_index <= back_index
      yield self[front_index]
      front_index += 1
      if front_index <= back_index
        yield self[back_index]
        back_index -= 1
      end
    end
  end
end

%w[Curses! been again! foiled I've].each_from_both_sides { |x| puts x }

# This code defines a method for the Enumerable module that allows you to
module Enumerable
  def each_n_times(num)
    each { |e| num.times { yield e } }
  end

  def each_randomly(&block)
    (sort_by { rand }).each(&block)
  end
end

%w[Hello Echo].each_n_times(3) { |x| puts x }

%w[Eat at Joe's].each_randomly { |x| puts x }
