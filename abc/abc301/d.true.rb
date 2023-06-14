s = gets.chomp
n = gets.to_i
ans = s.gsub '?', '0'

if ans.to_i(2) > n
  puts -1
  exit
end

s.each_char.with_index do |c, i|
  next if s[i] != '?'

  ans[i] = '1'
  if ans.to_i(2) > n
    ans[i] = '0'
  end
end

puts ans.to_i(2)