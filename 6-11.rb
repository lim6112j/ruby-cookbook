#!/usr/bin/env ruby
# frozen_string_literal: true

lottery_probabilities = { "You've wasted your money!" => 1000,
                          "You've won back the cost of your ticket!" => 50,
                          "You've won two shiny zorkmids!" => 20,
                          "You've won five zorkmids!" => 10,
                          "You've won ten zorkmids!" => 5,
                          "You've won a hundred zorkmids!" => 1 }
def choose_weighted(weighted)
  sum = weighted.inject(0) do |sum, item_and_weight|
    sum + item_and_weight[1]
  end
  target = rand(sum)
  weighted.each do |item, weight|
    return item if target <= weight

    target -= weight
  end
end
5.times { puts choose_weighted(lottery_probabilities) }
