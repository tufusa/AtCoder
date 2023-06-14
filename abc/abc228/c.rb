n, k = gets.split.map(&:to_i)
point = []
ans = Array.new(n)
n.times do |i|
    a, b, c = gets.split.map(&:to_i)
    point.push([i, a + b + c])
end
point.sort_by!(&:last).reverse!
point.each_with_index do |data, i|
    po = data[1] + 300
    idx = point.bsearch_index{|x| x[1] <= po }
    if idx.nil?
        idx = n - 1
    end
    if idx + 1 <= k
        ans[data[0]] = "Yes"
    else
        ans[data[0]] = "No"
    end
end
puts ans