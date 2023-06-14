a, b = gets.split.map(&:to_i)
(0..255).each do |c|
    if a ^ c == b
        puts c
        exit
    end
end