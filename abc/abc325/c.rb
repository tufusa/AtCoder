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

h, w = gets.split.map &:to_i
ss = h.times.map { gets.chomp.chars }
tree = UnionFind.new(h * w)
(0...h).each do |y|
  (0...w).each do |x|
    next if ss[y][x] == '.'
    now = y * w + x
    tree.unite(now, now - 1) if x > 0 && ss[y][x - 1] == '#'
    tree.unite(now, now + 1) if x < w - 1 && ss[y][x + 1] == '#'
    tree.unite(now, now + w) if y < h - 1 && ss[y + 1][x] == '#'
    tree.unite(now, now - w) if y > 0 && ss[y - 1][x] == '#'
    tree.unite(now, now + w + 1) if x < w - 1 && y < h - 1 && ss[y + 1][x + 1] == '#'
    tree.unite(now, now + w - 1) if x > 0 && y < h - 1 && ss[y + 1][x - 1] == '#'
    tree.unite(now, now - w + 1) if x < w - 1 && y > 0 && ss[y - 1][x + 1] == '#'
    tree.unite(now, now - w - 1) if x > 0 && y > 0 && ss[y - 1][x - 1] == '#'
  end
end
pars = []
(0...h).each do |y|
  (0...w).each do |x|
    next if ss[y][x] == '.'
    pars << tree.root(y * w + x)
  end
end
puts pars.uniq.size