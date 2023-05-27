q = gets.to_i
deck = []
ans = []
for i in 0...q
    que = gets.split.map(&:to_i)
    if que[0] == 1
        deck.unshift(que[1])
    elsif que[0] == 2
        deck.push(que[1])
    else
        ans.push(deck[que[1] - 1])
    end
end
puts ans