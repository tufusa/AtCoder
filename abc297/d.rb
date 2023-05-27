a, b = gets.split.map &:to_i
am = a
bm = b
c = 0
f = [1, 2]
while f[-1] < 10**18 # いらないらしい
  f << f[-1] + f[-2]
end
while true
  if am == bm || am * bm == 0
    puts c
    exit
  end
  ai = f.bsearch_index{|x| x >= am }
  break if ai && f[ai] == am && (f[ai - 1] == bm || f[ai + 1] == bm)
  if am > bm
    c += Rational(am - bm, bm).ceil # to_fは信じない, Rationalが最強
    am %= bm
  elsif bm > am
    c += Rational(bm - am, am).ceil # to_fは信じない, Rationalが最強
    bm %= am
  end
end
m = [am, bm].max
f.reverse_each.with_index do |fib, i|
  if m % fib == 0
    puts c + f.size - i - 1
    exit
  end
end