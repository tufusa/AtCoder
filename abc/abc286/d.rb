n, x = gets.split.map &:to_i
coins = n.times.map{ gets.split.map &:to_i }

que = [[0, x]]
seen = {}
while !que.empty?
  s = que.shift
  idx = s[0]
  left = s[1]
  seen["#{idx}x#{left}".to_sym] = true
  coin = coins[idx]
  (0..([coin[1], left / coin[0]].min)).each do |count|
    if left - coin[0] * count == 0
      puts 'Yes'
      exit
    end
    nidx = idx + 1
    nleft = left - coin[0] * count
    next if seen["#{nidx}x#{nleft}".to_sym]
    if nidx < n && nleft > 0
      que << [nidx, nleft]
    end
  end
end

puts 'No'