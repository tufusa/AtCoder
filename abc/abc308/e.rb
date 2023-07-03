# frozen_string_literal: true

n = gets.to_i
as = gets.split.map &:to_i
ss = gets.chomp.chars

sum = %w(M E X).map{|c| [c, Array.new(3){ [0] }] }.to_h
src = ss.zip(as)
prd = %w(M E X).product [0, 1, 2]

src.each do |c, a|
  prd.each{|pc, pa| sum[pc][pa] << sum[pc][pa][-1] }
  sum[c][a][-1] += 1
end

res = 0
dom = [0, 1, 2]
src.each_with_index do |(c, a), i|
  next if c != 'E'

  dom.repeated_permutation(2).each do |am, ax|
    sm = sum['M'][am][i]
    sx = sum['X'][ax][-1] - sum['X'][ax][i + 1]
    mex = dom.-([a, am, ax]).min || 3
    res += sm * sx * mex
  end
end
puts res