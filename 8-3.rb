#!/usr/bin/env ruby
# frozen_string_literal: true

def repeat(num, &block)
  num.times(&block) if block_given?
end
repeat(2) { puts 'hello, world!' }

def repeat2(num, &block)
  num.times { block.call } if block
end
repeat2(2) { puts 'hello' }

def repeat3(num, &block)
  num.times(&block) if block_given?
end
repeat3(2) { puts 'hello' }

def pick_random_numbers(min, max, limit)
  limit.times { yield min + rand(max + 1) }
end

def lottery_style_numbers(&block)
  pick_random_numbers(1, 49, 6, &block)
end

lottery_style_numbers { |n| puts "Lucky number: #{n}" }

def invoke_on_each(*args, &block)
  args.each(&block)
end
invoke_on_each(1, 2, 3, 4) { |x| puts x**2 }
