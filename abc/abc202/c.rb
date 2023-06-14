n = gets.to_i
a = gets.split.map(&:to_i).group_by(&:itself).map{|k, v| [k, v.size]}.to_h
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i).group_by(&:itself).map{|k, v| [k, v.size]}.to_h
ans = 0
c.each do |k, v|
    bc = b[k - 1]
    if a.key?(bc)
        ans += a[bc] * v
    end
end
puts ans