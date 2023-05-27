n = gets.to_i
s = []
i = 0
while(i < n)
    s.push([i + 1, gets.chomp])
    i += 1
end
j = s.uniq(&:last) #最後の要素を見て重複削除
ans = []
j.each do |a|
    ans.push(a[0]) #値の検索(.index(value))を何度もしない,最初からインデックス付きで二元配列にしてuniq
end
puts ans