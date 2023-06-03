require 'set'

class UnionFind
  def initialize(x)
      @par = Array(0...x)
      @rank = Array.new(x, 0)
  end

  def root(x)
      return x if @par[x] == x
      return @par[x] = root(@par[x])
  end

  def unite(x, y)

      rx = root(x)
      ry = root(y)
      return if rx == ry
      case @rank[rx] <=> @rank[ry]
      when -1
          @par[rx] = ry
      when 1
          @par[ry] = rx
      when 0
          @par[rx] = ry
          @rank[ry] += 1
      end
    end
end

n, m = gets.split.map &:to_i
paths = m.times.map{ gets.split.map{ _1.to_i - 1 } }
tree = UnionFind.new(n)
paths.each {|u, v| tree.unite(u, v) }
k = gets.to_i
goods = k.times.map{ gets.split.map{ _1.to_i - 1 } }
good_d = Set.new goods.map{|x, y| [tree.root(x), tree.root(y)].minmax }
q = gets.to_i
qs = q.times.map{ gets.split.map{ _1.to_i - 1 } }
res = []
qs.each do |pp, qq|
  res << (good_d.include?([tree.root(pp), tree.root(qq)].minmax) ? 'No' : 'Yes')
end
puts res
