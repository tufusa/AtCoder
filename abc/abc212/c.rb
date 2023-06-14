n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
ans = 10**9
a.each do |i|
    idx = b.bsearch_index{ |x| x >= i }
    if idx.nil?
        idx = m - 1
    end
    ans = [(b[idx] - i).abs, (b[idx - 1] - i).abs, ans].min
end
puts ans