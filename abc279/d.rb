a, b = gets.split.map &:to_f
x = ((a / (b * 2)) ** (2.0 / 3) - 1).floor
puts [x - 1, x, x + 1].filter{ _1 >= 0 }.map{ b * _1 + a / (1 + _1) ** 0.5 }.min
# y = bx + a(1 + x)^-(1/2)
# y' = b - 1/2 * a(1 + x)^-(3/2)
# b = 1/2 * a(1 + x)^-(3/2)
# (1 + x)^3/2 = a / 2b