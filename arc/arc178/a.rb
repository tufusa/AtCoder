require 'rbtree'

n, m = gets.split.map &:to_i
as = gets.split.map(&:to_i).sort
if as[0] == 1
  puts -1
  exit
end

t = RBTree.new
(2..n).each { t[_1] = 0 }

ar = [1]
ai = 0
i = 0
while ai < m
  a = as[ai]
  if a == i + 2
    if a + 1 > n
      puts -1
      exit
    end
    ar << a + 1
    t.delete a + 1
    ai += 1
  else
    ar << t.shift[0]
  end
  i += 1
end
if t.size > 0
  ar.concat t.keys
end

puts ar.join ?\s
