n, m = [2*10**5, 2*10**5]#gets.split.map &:to_i
xs = m.times.map{ rand(n) } #gets.split.map { _1.to_i - 1 }
p xs
res = []
(0...n).each do |b|
  r = 0
  xs.each_cons(2) do |now, nxt|
    if nxt > now && now <= b && b < nxt || nxt < now && !(nxt <= b && b < now)
      r += (now - nxt) % n
    else
      r += (nxt - now) % n
    end
  end
  res << r
end

p res.min