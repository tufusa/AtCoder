a, b = gets.split.map &:to_i
(0..9).each{ next if _1 == a + b; puts _1; exit }