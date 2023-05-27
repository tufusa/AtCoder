q = gets.to_i
books = []
ans = []
q.times do
    s = gets.chomp
    if s == "READ"
        ans.push books.pop
    else
        books.push s
    end
end
puts ans