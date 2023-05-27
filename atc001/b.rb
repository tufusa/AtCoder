n, q = gets.split.map(&:to_i)

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
ans = []

(0...q).each do 
    r, a, b = gets.split.map(&:to_i)
    if r == 0
        tree.unite(a, b)
    else
        ans.push(tree.same?(a, b))
    end
end

ans.each{ puts _1 ? "Yes" : "No" }