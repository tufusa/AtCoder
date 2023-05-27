n, w = gets.split.map(&:to_i)
q = []
n.times do
    s, t, pl = gets.split.map(&:to_i)
    q.push([s, pl], [t, -pl])
end
now = 0
q.sort_by(&:first).chunk_while{|x, y| x[0] == y[0] }.map{|a| [a[0][0], a.sum(&:last)] }.each do |t, pl|
    now += pl
    if now > w
        puts "No"
        exit
    end
end
puts "Yes"