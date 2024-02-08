require 'set'

h, w = gets.split.map &:to_i
as = h.times.map { gets.split.map &:to_i }
bs = h.times.map { gets.split.map &:to_i }

ast = as.transpose
bst = bs.transpose

assa = as.map { Set.new _1.tally.to_a }
bssa = bs.map { Set.new _1.tally.to_a }
astsa = ast.map { Set.new _1.tally.to_a }
bstsa = bst.map { Set.new _1.tally.to_a }

if assa & bssa != assa || astsa & bstsa != astsa
  puts -1
  exit
end

def tr(arr)
  ans = 0
  (0...arr.size).each do |i|
    now = arr[i]
    (0...i).each do |j|
      ans += 1 if arr[j] > now
    end
  end
  ans
end

tbssa = bssa.dup
tbstsa = bstsa.dup
har = (0...h).map { tbssa.find_index(assa[_1]).tap{|i| tbssa[i] = nil } }
war = (0...w).map { tbstsa.find_index(astsa[_1]).tap{|i| tbstsa[i] = nil } }
puts tr(har) + tr(war)