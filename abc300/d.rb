require 'prime'

n = gets.to_i
an = 54
bn = 819
cn = 25112
ps = Prime.take(cn)
ans = 0

(0...an).each do |ai|
  va = ps[ai]**2
  ((ai + 1)...bn).each do |bi|
    vb = va * ps[bi]
    break if vb > n
    ((bi + 1)...cn).each do |ci|
      vc = vb * ps[ci]**2
      break if vc > n
      ans += 1
    end
  end
end
puts ans