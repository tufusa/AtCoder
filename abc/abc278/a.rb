n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
puts (a[k..] || []).push(*([0] * [k, n].min)).map(&:to_s).join(' ')