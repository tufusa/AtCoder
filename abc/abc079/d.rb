h, w = gets.split.map &:to_i
cs = 10.times.map { gets.split.map &:to_i }
as = h.times.map { gets.split.map &:to_i }

while true
  ch = false
  (0..9).each do |now|
    (0..9).each do |mid|
      (0..9).each do |nxt|
      next if now == nxt || now == mid || nxt == mid

      now_c = dists[now][nxt]
      new_c = dists[now][mid] + dists[mid][nxt]
      if new_c < now_c
        ch = true
        dists[nxt] = new_c
      end
    end
  end

  break if !ch
end

p dists