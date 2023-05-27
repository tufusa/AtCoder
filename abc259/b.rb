include Math
a, b, d = gets.split.map &:to_i
th = d / 360.0 * 2 * PI
print a * Math.cos(th) - b * Math.sin(th), " ", a * Math.sin(th) + b * Math.cos(th)