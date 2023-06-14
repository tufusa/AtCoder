n = gets.to_i
sx, sy, tx, ty = gets.split.map &:to_i
xyr = n.times.map{ gets.split.map &:to_i }

sn = 0
tn = 0
i = 0

while(i < n)
    x = xyr[i][0]
    y = xyr[i][1]
    r = xyr[i][2]
    if (sx - x) ** 2 + (sy - y) ** 2 == r ** 2
        sn = i
    end
    if (tx - x) ** 2 + (ty - y) ** 2 == r ** 2
        tn = i
    end
    i += 1
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

    def same?(x, y)
        return root(x) == root(y)
    end
end

tree = UnionFind.new(n)

(0...n).to_a.combination(2) do |i, j|
    xdis = xyr[i][0] - xyr[j][0]
    ydis = xyr[i][1] - xyr[j][1]
    rsum = xyr[i][2] + xyr[j][2]
    rdis = xyr[i][2] - xyr[j][2]
    disd = xdis * xdis + ydis * ydis
    if disd <= rsum * rsum && disd >= rdis * rdis
        tree.unite(i, j)
    end
end

puts tree.same?(sn, tn) ? "Yes" : "No"