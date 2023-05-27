n, k = gets.split.map(&:to_i)
n = n.to_s
#s.to_i(b)は文字列sをb進数だとみなして10進数に変換, n.to_s(b)は整数nを10進数だとみなしてb進数の文字列に変換
(1..k).each{ n = n.to_i(8).to_s(9).tr("8", "5") }
puts n