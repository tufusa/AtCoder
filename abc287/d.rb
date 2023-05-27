# frozen_string_literal: true
s = gets.chomp.chars
t = gets.chomp.chars
l = t.size
now = s[-l, l]
state = Array.new(l, 0)
now.each_with_index{|v, i| state[i] = 1 if v != '?' && t[i] != '?' && v != t[i] }
res = [state.sum == 0 ? 'Yes' : 'No']
i = 0
sum = state.sum
while i < l
  if s[i] != '?' && t[i] != '?' && s[i] != t[i]
    puts res, Array.new(l - i, 'No')
    exit
  else
    sum -= 1 if state[i] == 1
    state[i] = 0
  end
  res << (sum == 0 ? 'Yes' : 'No')
  i += 1
end
puts res