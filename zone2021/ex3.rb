n, m = gets.split.map(&:to_i)
c = m.times.map{ gets.split.map(&:to_i) }
ans = [0, 0]
(0...n).to_a.combination(3) do |comb|
    res = []
    comb.each do |e|
        c.each do |a|
            if a.include?(e)
                res.push(a)
            end
        end
    end
    res = res.flatten.uniq.size
    ans = (ans[0] < res) ? ([res, comb]) : ans
end
puts ans[1].map(&:to_s).join(" ")