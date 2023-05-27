n, m = gets.split.map &:to_i
path = m.times.map{ gets.split.map{ _1.to_i - 1 } }
$g = Array.new(n){ [] }
$color = Array.new(n){ -1 }
path.each{|u, v| $g[u] << v; $g[v] << u }

class UnionFind
  def initialize(x)
      @x = x
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

  def same?(x, y)
    return root(x) == root(y)
  end
end

def dfs(node, color)
  $color[node] = color
  $g[node].each do |ch|
    if $color[ch] == -1 && !dfs(ch, (color + 1) % 2)
      return false
    elsif $color[ch] == $color[node]
      return false
    end
  end
end

bip = (0...n).each do |node|
  if $color[node] == -1 && !dfs(node, 0)
    break false
  end
end

if !bip
  puts 0
  exit
end

tree = UnionFind.new(n)
path.each{|u, v| tree.unite(u, v) }
gunite = (0...n).group_by{ tree.root(_1) }

res = 0
$g.each_with_index do |chs, i|
  myc = $color[i]
  myunite = gunite[tree.root(i)]
  res += n - myunite.size
  res += (myunite - chs).count{|oth| oth > i && myc != $color[oth] }
end
puts res