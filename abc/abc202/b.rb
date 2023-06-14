s = gets.split("")
ans = []
s.reverse.each do |c|
    if c == "6"
        ans.push("9")
    elsif c == "9"
        ans.push("6")
    else
        ans.push(c)
    end
end
puts ans.join