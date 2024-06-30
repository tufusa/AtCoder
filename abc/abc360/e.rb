require 'ac-library-rb/inv_mod'
include AcLibraryRb

n, k = gets.split.map &:to_i
move = Rational(2, n * n)
stay = 1 - move * (n - 1)
d = stay - move
mod = 998244353
dk = d**k
white = move * (1 - dk) / (1 - d)
black = white + dk
ans = black + (n * (n + 1) / 2 - 1) * white
puts ans.numerator * inv_mod(ans.denominator, mod) % mod
