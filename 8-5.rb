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
