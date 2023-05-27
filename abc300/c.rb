$h, $w = gets.split.map &:to_i
$c = $h.times.map{ gets.chomp.chars }

ans = Array.new([$h, $w].min, 0) # レベルごとに個数を保存する配列

def cross(x, y, lev)
  next_lev = lev + 1
  [
    [x + next_lev, y + next_lev],
    [x + next_lev, y - next_lev],
    [x - next_lev, y + next_lev],
    [x - next_lev, y - next_lev]
  ].each do |lx, ly|
    char = if (0...$w).include?(lx) && (0...$h).include?(ly)
      $c[ly][lx] # 調べている座標がグリッド内なら普通に参照
    else
      '.' # 範囲外なら.扱いにする
    end
    # 四隅が1個でも#でなければバツ印じゃない(拡張に失敗した)ので現在のlevを返して終わり
    return lev if char != '#'
  end
  # 四隅が全部#だったので拡張に成功、それ以降を調べる
  return cross(x, y, next_lev)
end

$h.times do |y|
  $w.times do |x|
    next if $c[y][x] != '#' # そもそも中心が#でなければ論外

    lev = cross(x, y, 0) # レベルを調べる
    next if lev == 0 # レベル0(=バツ印の中心じゃなかった)ならスキップ

    # ansのレベルlevの項に1足す
    # levが1-indexedなので配列の添え字(0-indexed)にするために1引くことに注意
    ans[lev - 1] += 1
  end
end

puts ans.map(&:to_s).join ' '

## D - AABCC