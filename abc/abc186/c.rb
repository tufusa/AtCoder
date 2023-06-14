ans = 0
(1..(gets.to_i)).each do |i|
    if not (i.to_s.include?("7") || i.to_s(8).include?("7"))
        ans += 1
    end
end
puts ans