n, m = gets.split.map &:to_i
$ss = n.times.map{ gets.chomp.tr('.#', '01').chars.map &:to_i }

def tak?(x, y)
  (0...3).each do |dx|
    nx = x + dx
    (0...3).each do |dy|
      ny = y + dy
      return false if $ss[ny][nx] == 0
    end
  end

  (6...9).each do |dx|
    nx = x + dx
    (6...9).each do |dy|
      ny = y + dy
      return false if $ss[ny][nx] == 0
    end
  end

  ny = y + 3
  (0...4).each do |dx|
    nx = x + dx
    return false if $ss[ny][nx] == 1
  end

  nx = x + 3
  (0...4).each do |dy|
    ny = y + dy
    return false if $ss[ny][nx] == 1
  end

  ny = y + 5
  (5...9).each do |dx|
    nx = x + dx
    return false if $ss[ny][nx] == 1
  end
  nx = x + 5
  (5...9).each do |dy|
    ny = y + dy
    return false if $ss[ny][nx] == 1
  end

  true
end

res = []
(0..(n - 9)).each do |y|
  (0..(m - 9)).each do |x|
    res << "#{y + 1} #{x + 1}" if tak?(x, y)
  end
end
puts res