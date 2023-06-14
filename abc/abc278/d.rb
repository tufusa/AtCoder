n = gets.to_i
a = gets.split.map &:to_i
q = gets.to_i
qs = q.times.map{ gets.split.map &:to_i }
base = 0
adds = a.map.with_index{ |v, i| [i, v] }.to_h
ans = []
qs.each do |t, *v|
    if t == 1
        base = v[0]
        adds = {}
    elsif t == 2
        adds[v[0] - 1] ||= 0
        adds[v[0] - 1] += v[1]
    else
        ans << base + (adds[v[0] - 1] || 0)
    end
end
puts ans