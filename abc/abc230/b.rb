p s = gets.chomp.split("xx")
s.each do |str|
    if str != "o" || s[-1][0] == "x"
        puts "No"
        exit
    end
end
puts "Yes"