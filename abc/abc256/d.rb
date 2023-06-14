n = gets.to_i
lr = n.times.map{ gets.split.map(&:to_i) }.sort_by{ |x| [x[0], -x[1]] }.slice_when{ |x, y| x[0] != y[0] }.map{ |x| x[0] }
s, e = lr.shift
ans = []
lr.each do |d|
    if e < d[0]
        ans.push [s, e]
        s = d[0]
    end
    e = [d[1], e].max
end
ans.push [s, e]
ans.each{ |a| puts "#{a[0]} #{a[1]}" }