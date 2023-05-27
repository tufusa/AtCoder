require "prime"
puts Math.log2(Prime.prime_division(gets.to_i).sum(&:last)).ceil