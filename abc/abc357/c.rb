n = gets.to_i
s = 3**n
c = Array.new(s) { Array.new s, ?# }

def carpet(l, y)
  return []
  [
    carpet(l - 1)
  ]
end

(1..n).each do |l|
  size = 3**(l - 1)
  # count = 3**(2 * (n - l))
  width = 3**(n - l)
  wei = 3 * size

  (0...width).each do |y|
    yy = wei * y + size
    (0...width).each do |x|
      xx = wei * x + size

      (0...size).each do |dy|
        yyy = yy + dy
        (0...size).each do |dx|
          xxx = xx + dx
          c[yyy][xxx] = ?.
        end
      end
    end
  end
end

puts c.map &:join