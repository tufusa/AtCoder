n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
count = [ a[0] - 1 ]
ans = []
#それぞれの選んではいけない数字の左側に選んでいい数字が何個あるか前計算
for i in 1...n
    count.push(a[i] - a[i - 1] - 1 + count[-1])
end
(1..q).each do
    k = gets.to_i
    idx = count.bsearch_index{ |x| x >= k }
    if idx.nil?
        ans.push(a[-1] + (k - count[-1]))
    else
        ans.push(a[idx] - 1 - (count[idx] - k))
    end
end
puts ans