n = gets.to_i
a = gets.split.map(&:to_i)
bef = []
aft = []
(0...(n / 2)).each do |i|
    if a[i] != a[-1 - i]
        bef.push(a[i])
        aft.push(a[-(i + 1)])
    end
end
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
tree = UnionFind.new(a.max)
(0...(bef.size)).each do |i|
    tree.unite(bef[i] - 1, aft[i] - 1)
end
puts (bef + aft).uniq.group_by{ |x| tree.root(x - 1) }.values.map{ |e| e.size - 1 }.sum