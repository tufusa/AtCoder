s = gets.chomp
n = gets.to_i.to_s(2)
l = [s.size, n.size].max
s = (s.rjust l, '0').gsub('?', '2').chars.map &:to_i
n = (n.rjust l, '0').gsub('?', '2').chars.map &:to_i
zip = s.zip n
equable = zip.all? do |bs, bn|
  bs == 2 || bs == bn
end
if equable
  puts n.map(&:to_s).join.to_i(2)
  exit
end
(0...l).each do |i|
  if s[i] == 0 && n[i] == 1
    puts s.map(&:to_s).join.gsub('2', '1').to_i(2)
    exit
  end
  if s[i] == 2
    if n[i] == 1
      ((i + 1)...l).each do |j|
        if s[j] == 0 && n[j] == 1
          puts s.map(&:to_s).join.gsub('2', '1').to_i(2)
          exit
        elsif s[j] == 1 && n[j] == 0
          s[i] = 0
          puts s.map(&:to_s).join.gsub('2', '1').to_i(2)
          exit
        end
      end
    else
      s[i] = 0
    end
  end
end
ans = s.map(&:to_s).join.to_i(2)
if ans <= n.map(&:to_s).join.to_i(2)
  puts ans
else
  puts -1
end