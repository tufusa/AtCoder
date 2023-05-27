require "Prime"
num = 20.times.map{ gets.split.map(&:to_i) }.flatten
puts num.select{ |n| n.prime? }.size