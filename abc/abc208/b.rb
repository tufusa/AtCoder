price = gets.to_i
coin = [1]
(1..10).each do |i|
    coin.push(coin[-1] * i)
end
coin.shift
ans = 0
coin.reverse.each do |c|
    t = [100, price / c].min
    ans += t
    price -= t * c
    break if price == 0
end
puts ans