#!/usr/bin/env ruby
# https://projecteuler.net/problem=54

def compare_hands(string)
  hands = string.split(/ /).to_a
  hand_one, hand_two = hands[0..4], hands[5..9]
  hand_value(hand_one)
end

def hand_value(hand)
  card_order = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  hand.map! {|e| e.split(//) }
  suits_array, numbers_array = [], []
  suits_hash, numbers_hash = {}, {}
  hand.each do |element|
    suits_hash[element[1]] ? suits_hash[element[1]] += 1 : suits_hash[element[1]] = 1
    numbers_hash[element[0]] ? numbers_hash[element[0]] += 1 : numbers_hash[element[0]] = 1
    numbers_array << element[0]; suits_array << element[1]
  end
  if suits_hash.values.include?(5) && numbers_hash.keys.sort == ["10","A","J","Q","K"]
    return "royal flush"
  elsif suits_hash.values.include?(5) #&& # cards have consecutive numbers
    return "straight flush"
  elsif numbers_hash.values.include?(4)
    return "four of a kind"
  elsif numbers_hash.values.include?(3) && numbers_hash.values.include?(2)
    return "full house"
  elsif suits_hash.values.include?(5)
    return "flush"
  elsif card_order[card_order.find_index(numbers_array.min)..card_order.find_index(numbers_array.min+5)] == numbers_array.sort
    return "straight"
  elsif numbers_hash.values.include?(3)
    return "three of a kind"
  elsif numbers_hash.values.count(2) == 2
    return "two pairs"
  elsif numbers_hash.values.count(2) == 1
    return "one pair"
  else
    return numbers_hash.keys.max
  end
end

p compare_hands("5H 5C 6S 7S KD 2C 3S 8S 8D TD")