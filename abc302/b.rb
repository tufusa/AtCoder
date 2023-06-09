$h, $w = gets.split.map &:to_i
$ss = $h.times.map{ gets.chomp.chars }

$snuke = 'snuke'.chars

def dfs(x, y, dir, lev, memo)
  return memo if lev == $snuke.size
  return nil unless y.between?(0, $h - 1) && x.between?(0, $w - 1)
  return nil if $ss[y][x] != $snuke[lev]

  memo << [x, y]
  dfs(x + dir[0], y + dir[1], dir, lev + 1, memo)
end

$h.times do |y|
  $w.times do |x|
    [-1, 0, 1].each do |dir_x|
      [-1, 0, 1].each do |dir_y|
        next if dir_x == 0 && dir_y == 0

        res = dfs(x, y, [dir_x, dir_y], 0, [])
        next if !res

        puts res.map{|x_, y_| "#{y_ + 1} #{x_ + 1}" }
        exit
      end
    end
  end
end