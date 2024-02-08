n = gets.to_i
as = n.times.map { gets.split.map &:to_i }
pos = {}
as.each_with_index do |tx, i|
  next if tx[0] != 1

  pos[tx[1]] ||= []
  pos[tx[1]] << i
end

pot = Array.new(n, 0)
as.each_with_index.reverse_each do |tx, i|
  t, x = tx
  next if t == 1

  while true
    cur = pos[x]&.pop
    if cur.nil?
      puts -1
      exit
    end
    next if cur > i

    pot[cur] = 1
    pot[i] = -1
    break
  end
end

sum = [0]
pot.each{ sum << sum[-1] + _1 }
ans = []
as.each_with_index do |tx, i|
  t, x = tx
  next if t == 2

  ans << pot[i]
end
puts sum.max
puts ans.join ?\s