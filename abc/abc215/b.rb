n = gets.to_i
i = 0
rep = 1
while(1)
    if (rep > n)
        puts i - 1
        exit
    end
    i += 1
    rep *= 2
end