require 'set'
n, m, k = gets.split.map &:to_i#[2*10**5, 10**5+1,10**5]#
a = gets.split.map &:to_i#Array.new(n){ rand(10**9) + 1 }#
nums = SortedSet.new a[0...m]
cnts = a[0...m].tally
ans = [nums.flat_map{|v| [v] * cnts[v] }[0...k].sum]
(1..(n-m)).each do |i|
  cnts[a[i + m - 1]] ||= 0
  cnts[a[i + m - 1]] += 1
  nums.add a[i + m - 1]
  cnts[a[i - 1]] -= 1
  nums.delete a[i - 1] if cnts[a[i - 1]] == 0
  count = 0
  sum = 0
  nums.each do |num|
    count += cnts[num]
    if count >= k
      sum += num * (cnts[num] - (count - k))
      break
    else
      sum += num * cnts[num]
    end
  end
  ans << sum
end
puts ans.map(&:to_s).join ' '