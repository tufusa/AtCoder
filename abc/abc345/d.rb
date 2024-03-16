n, h, w = gets.split.map &:to_i
ts = n.times.map { gets.split.map &:to_i }

def dfs(h, w, fig, ts, x, y)
  return true if y == h

  nx, ny = x < w - 1 ? [x + 1, y] : [0, y + 1]
  return dfs(h, w, fig, ts, nx, ny) if fig[y][x] == 1

  ts.each_with_index do |(a, b), i|
    [[a, b], [b, a]].uniq.each do |ra, rb|
      next if y + ra > h || x + rb > w
      next if (0...ra).any? { |dy| (0...rb).any? { |dx| fig[y + dy][x + dx] == 1 } }

      (0...ra).each { |dy| (0...rb).each { |dx| fig[y + dy][x + dx] = 1 } }
      return true if dfs(h, w, fig, ts.filter.with_index{ _2 != i }, nx, ny)

      (0...ra).each { |dy| (0...rb).each { |dx| fig[y + dy][x + dx] = 0 } }
    end
  end

  false
end

puts dfs(h, w, Array.new(h) { Array.new(w, 0) }, ts, 0, 0) ? 'Yes' : 'No'