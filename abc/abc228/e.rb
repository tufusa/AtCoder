#フェルマーの小定理
n, k, m = gets.split.map(&:to_i)
P = 998244353
if m % P == 0
    puts 0
else
    puts m.pow(k.pow(n, P - 1), P)
end