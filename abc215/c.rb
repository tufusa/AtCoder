s, k = gets.split
n = s.size
k = k.to_i
ans = []
fact = [1]
(1..n).each do |i|
    fact.push(fact[-1] * i)
end
chars = s.chars.sort
count = chars.group_by(&:itself).map{ |k, v| [k, v.size] }
size = n.clone
(0...n).each do |i|
    num = [0]
    count.delete_if{ |arr| arr[1] == 0}
    (0...(count.size)).each do |j|
        c = count.flatten.clone.each_slice(2).to_a
        c[j][1] -= 1 if c[j][1] != 0
        rep = 1
        sum = 0
        (0...(count.size)).each do |l|
            rep *= fact[c[l][1]]
            sum += c[l][1]
        end
        num.push(num[-1] + fact[sum] / rep)
    end
    num.shift
    idx = num.bsearch_index{ |x| x >= k }
    ans.push count[idx][0]
    count[idx][1] -= 1
    if idx != 0
        k -= num[idx - 1]
    end
end
puts ans.join