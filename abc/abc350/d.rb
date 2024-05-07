class UnionFind
  def initialize(x)
    @par = Array(0...x)
    @rank = Array.new(x, 0)
  end

  def root(x)
    return x if @par[x] == x

    @par[x] = root(@par[x])
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

  def same?(x, y)
    root(x) == root(y)
  end
end

n, m = gets.split.map &:to_i
g = Array.new(n) { [] }
m.times do
  a, b = gets.split.map(&:to_i).sort
  g[a - 1] << b - 1
end
t = UnionFind.new n

n.times do |i|
  g[i].each { t.unite i, _1 }
end
ans = (0...n).group_by { t.root _1 }.map do |_, v|
  c = v.size
  e = v.map { g[_1] }.flatten.size
  c * (c - 1) / 2 - e
end.sum
puts ans
