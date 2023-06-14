n = gets.to_i
per = gets.split.map(&:to_i)
ans = Array.new(n)
for i in 0...n
    ans[per[i] - 1] = i + 1
end
puts ans.map(&:to_s).join(" ")