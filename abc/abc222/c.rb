n, m = gets.split.map(&:to_i)
jan = []
(2*n).times do
    jan.push gets.chomp.tr("GCP", "012").chars.map(&:to_i)
end
point = (0...2*n).to_a.zip([0] * (2*n))
m.times do |i|
    (0...n).each do |k|
        a = point[2 * k][0]
        b = point[2 * k + 1][0]
        if (jan[a][i] + 1) % 3 == jan[b][i]
            point[point.index{ _1[0] == a }][1] += 1
        elsif (jan[a][i] - 1) % 3 == jan[b][i]
            point[point.index{ _1[0] == b }][1] += 1
        end
    end
    point = point.sort_by(&:last).reverse.slice_when{ _1[1] != _2[1] }.map{ _1.sort_by(&:first) }
    temp = []
    point.each{ _1.each{ |x| temp.push x }}
    point = temp
end
puts point.map{ _1.first + 1 }