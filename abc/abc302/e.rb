require 'set'
n, qn = gets.split.map &:to_i
qs = qn.times.map{ gets.split.map &:to_i }
paths = Array.new(n){ Set.new }
res = []
count = n
qs.each do |q, u, v|
  if q == 1
    count -= 1 if count > 0 && paths[u - 1].empty?
    count -= 1 if count > 0 && paths[v - 1].empty?
    paths[u - 1] << v - 1
    paths[v - 1] << u - 1
  else
    paths[u - 1].each do |t|
      if paths[t].delete(u - 1) && paths[t].empty?
        count += 1
      end
    end
    count += 1 if !paths[u - 1].empty?
    paths[u - 1] = Set.new
  end
  res << count
end
puts res