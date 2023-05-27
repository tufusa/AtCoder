require "benchmark"
l, q = gets.split.map(&:to_i)
Benchmark.bm(10) do |x|
x.report("task") do
sum = [0, l]
ans = []
x = l
while(q != 0)
    #c, x = gets.split
    c = 1#c.to_i
    x -= 1#x.to_i
    idx = sum.bsearch_index{ |v| v > x }
    if c == 1
        sum.insert(idx, x)
    else
        ans.push sum[idx] - sum[idx - 1]
    end
    q -= 1
end
#puts ans
end
end