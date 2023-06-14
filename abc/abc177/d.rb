n, m = gets.split.map(&:to_i)

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

tree = UnionFind.new(n)

(0...m).each do
    a, b = gets.split.map(&:to_i)
    tree.unite(a - 1, b - 1)
end

puts (0...n).group_by{ |n| tree.root(n) }.values.max_by(&:size).size #親が同じものでグループ分けし, 最大の要素数を出力