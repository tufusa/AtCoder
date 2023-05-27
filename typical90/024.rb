n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
diff = 0
a.zip(b).each do |ea, eb| #zipで交互にかみ合わせて二つずつ取る
    diff += (eb - ea).abs
end
if diff > k
    puts "No"
else
    puts (k - diff) % 2 == 0 ? "Yes" : "No"
end