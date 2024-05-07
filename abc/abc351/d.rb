require 'set'

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
h, w = gets.split.map &:to_i
ss = h.times.map { gets.chomp.chars }

map = Array.new(h) { Array.new(w) }
(0...h).each do |y|
  (0...w).each do |x|
    next if ss[y][x] != ?#

    map[y][x] = -1
    map[y - 1][x] = 0 if y > 0
    map[y + 1][x] = 0 if y < h - 1
    map[y][x - 1] = 0 if x > 0
    map[y][x + 1] = 0 if x < w - 1
  end
end

t = UnionFind.new h * w
h.times do |y|
  w.times do |x|
    i = y * w + x
    next if map[y][x].nil?.!

    t.unite(i, i + 1) if x < w - 1 && map[y][x + 1].nil?
    t.unite(i, i - 1) if x > 0 && map[y][x - 1].nil?
    t.unite(i, i + w) if y < h - 1 && map[y + 1][x].nil?
    t.unite(i, i - w) if y > 0 && map[y - 1][x].nil?
  end
end

root = (0...(h * w)).map { t.root _1 }
h.times do |y|
  w.times do |x|
    i = y * w + x
    root[i] = nil if map[y][x].nil?.!
  end
end

nei = root.compact.uniq.map { [_1, Set[] ]}.to_h
h.times do |y|
  w.times do |x|
    next if map[y][x] != 0
    i = y * w + x

    nei[root[i - 1]] << i if x > 0 && root[i - 1].nil?.!
    nei[root[i + 1]] << i if x < w - 1 && root[i + 1].nil?.!
    nei[root[i - w]] << i if y > 0 && root[i - w].nil?.!
    nei[root[i + w]] << i if y < h - 1 && root[i + w].nil?.!
  end
end

cnt = root.compact.tally
puts cnt.map { |k, v| v + nei[k].size }.max || 1
