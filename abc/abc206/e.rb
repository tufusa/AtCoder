# require "prime"
# l, r = gets.split.map(&:to_i)
# primes = Prime.lazy.drop_while{|pm| pm < (2 * l / r) }.take(r / 2 - 2 * l / r + 1).to_a
# s = primes.size
# ans = 0
# for g in 2..(r / 2)
#     idx = primes.bsearch_index{|x| x * g > r}
#     if idx.nil?
#         idx = s
#     end
#     ans += (0..idx).to_a.combination(2).size
# end
# puts ans