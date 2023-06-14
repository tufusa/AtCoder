s = gets.chomp.bytes.slice_when{|x, y| x != y}.to_a
t = gets.chomp.bytes.slice_when{|x, y| x != y}.to_a

if s.size != t.size
    puts "No"
    exit
end

s.zip(t).each do |a, b|
    if a[0] != b[0] || a.size > b.size || (a.size == 1 && a.size < b.size)
        puts "No"
        exit
    end
end
puts "Yes"