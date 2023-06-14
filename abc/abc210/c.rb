n, k = gets.split.map(&:to_i)
c = (3*10**5).times.map{rand(10**5)}#gets.split.map(&:to_i)#
color = c[0...k].uniq.sort
ans = [color.size]
(1...(n - k)).each do |i|
    idx = color.bsearch_index{|x| x >= c[i - 1]}
    if idx.nil?
    elsif color[idx] == c[i - 1]
        color.delete_at(idx)
    end
    idx = color.bsearch_index{|x| x > c[i + k - 1]}
    if idx.nil?
        color.push(c[i + k - 1])
    else
        color.insert(idx - 1, c[i + k - 1])
    end
    ans.push(color.size)
    break if ans[-1] == k
end
puts ans.max