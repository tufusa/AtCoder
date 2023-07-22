$n, $m = gets.split.map &:to_i
$f = $n.times.map{ gets.chomp.tr('.#', '01').chars.map &:to_i }
$g = Array.new($n) { Array.new($m) { [] } }
$dirs = [[-1, 0], [1, 0], [0, -1], [0, 1]]
(0...$n).each do |y|
  (0...$m).each do |x|
    next if $f[y][x] == 1

    $dirs.each do |dx, dy|
      nx = x + dx; ny = y + dy
      next if nx.between?(0, $m - 1).!
      next if ny.between?(0, $n - 1).!
      next if $f[ny][nx] == 1

      $g[y][x] << [nx, ny]
    end
  end
end

$seen = Array.new($n) { Array.new($m, false) }
$stop = Array.new($n) { Array.new($m, false) }

def run(x, y, dx, dy)
  nx = x + dx; ny = y + dy

  if $f[ny][nx] == 1
    return if $stop[y][x]

    $stop[y][x] = true
    route(x, y, dx, dy)
  else
    $seen[ny][nx] = true
    run(nx, ny, dx, dy)
  end
end

def route(x, y, dx, dy)
  $dirs.each do |ndx, ndy|
    nx = x + ndx; ny = y + ndy
    next if ndx == -dx && ndy == -dy
    next if $g[ny][nx] == 1

    run(x, y, ndx, ndy)
  end
end

$seen[1][1] = true
$stop[1][1] = true
route(1, 1, 0, 0)

puts $seen.map{|r| r.map{ _1 ? 1 : 0 }.sum }.sum