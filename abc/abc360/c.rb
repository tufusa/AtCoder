n = gets.to_i
as = gets.split.map &:to_i
ws = gets.split.map &:to_i
g = ws.group_by.with_index { |_, i| as[i] }
puts g.sum {|_, v| v.sum - v.max }
