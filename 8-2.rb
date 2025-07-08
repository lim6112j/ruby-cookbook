#!/usr/bin/env ruby
# frozen_string_literal: true

def call_twice
  puts "I'm about to call your block"
  yield
  puts "I'm about to call your block again"
  yield
end
call_twice { puts "Hi, I'm a talking code block." }
def repeat(num, &block)
  if block_given?
    num.times(&block)
  else
    puts 'No block given'
  end
end
repeat(4) { puts 'hello, world!' }

puts('any block can be appended') { puts "this block won't be called" }

def call_twice2
  puts "I'm about to call your block"
  ret1 = yield('very first')
  puts "The value of your block: #{ret1}"
  puts 'Calling your block again'
  ret2 = yield('second')
  puts "The value of your block: #{ret2}"
end

call_twice2 do |which_time|
  puts "I'm a code block, called for the #{which_time}"
  which_time == 'very first' ? 1 : 2
end

squares = { 0 => 0, 1 => 1, 2 => 4, 3 => 9 }
pp(squares.find { |k, _v| k > 1 })

# hash extension to find all elements that match a condition
class Hash
  def find_all
    new_hash = {}
    each { |k, v| new_hash[k] = v if yield(k, v) }
    new_hash
  end
end
pp(squares.find_all { |k, _v| k > 1 })
