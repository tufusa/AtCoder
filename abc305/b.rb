ds = {a: 0, b: 3, c: 4, d: 8, e: 9, f: 14, g: 23}
pp, q = gets.split.map{ _1.downcase.to_sym }
puts (ds[pp] - ds[q]).abs