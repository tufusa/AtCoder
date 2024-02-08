n = gets.to_i
paths = (n - 1).times.map { gets.split.map &:to_i }
g = Array.new(n){ [] }
paths.each{|f, t| g[f - 1] << t - 1; g[t - 1] << f - 1 }

def solve(g, now, from)
  cs = []
  g[now].each do |nxt|
    next if nxt == from

    cs << solve(g, nxt, now)
  end
  cs.sort!.pop if from.nil?
  cs.sum + 1
end

puts solve(g, 0, nil)