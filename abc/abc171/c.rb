n = gets.to_i
per = [26]
sum = [0]
ans = []
str = ("a".."z").to_a.join.unpack("c*")
(0...11).each do
    per.push(per[-1] * 26)
end
per.each do |n|
    sum.push(sum[-1] + n)
end
size = sum.index{ _1 >= n }
if size == 1
    ans.push(str[n - 1])
else
    now = size - 1
    while(1)
        (per[now - 1] / 26)
    end
end
puts ans.pack("c*")