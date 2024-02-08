n = gets.to_i
abs = n.times.map { gets.split.map{ _1.to_i - 1 }.sort }
li = Array.new(2 * n)
abs.each { |a, b| li[a] = [:to, b]; li[b] = [:fr, a] }
ch = []
li.each_with_index do |v, i|
  if v[0] == :to
    ch << i
  elsif ch.pop != v[1]
    puts 'Yes'
    exit
  end
end
puts 'No'