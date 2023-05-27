# ABC300 解説

## A - N-choice question

### 問題

- AとBを足し算してね
- 和を選択肢の中から選んで番号で答えてね

### 解法

- やるだけ
- 足し算の結果をとっておく
- 選択肢をfor文等で順番に見て結果と比較する
- 等しかったらそれの番号を出して終わり
  - いつものことだが求められるのは1-indexedなので配列の添え字に1足すのに注意

```ruby
n, a, b = gets.split.map &:to_i
choices = gets.split.map &:to_i

s = a + b

choices.each_with_index do |choice, idx|
  if choice == s
    puts idx + 1
    exit
  end
end
```
ちなみにRubyにはこれができる`Array#index`というのがある
```ruby
n, a, b = gets.split.map &:to_i
choices = gets.split.map &:to_i

s = a + b
puts choices.index(s) + 1
```

## B - Same Map in the RPG World

### 問題

- 縦H * 横Wマスのマップが2枚あるよ
- マップを「ずらす」よ
  - ずらす際上下左右は繋がっているものとみなすよ
  - 縦シフトと横シフトがあるよ
    ```
       横シフト          縦シフト
    a b c    c a b    a b c    g h i
    d e f => f e d    d e f => a b c
    g h i    i g h    g h i    d e f
    ```
- マップをずらして、2枚のマップを同じにできるか判定してね

### 解法

- ずらすのはどちらか片方でいい
  - マップAとマップBを、それぞれ`(xa, ya)`, `(xb, yb)`ずらして重ねた場合、
    さらに`(-xb, -yb)`ずらすと、重なったままずれが`(xa - xb, ya - yb)`, `(0, 0)`になる
  - 要するにBを固定してAを`(xa - xb, ya - yb)`ずらせば重ねられるということ
- 横シフトの最大値は`W - 1`
  - Wマスシフトしたら元にもどるので
- 同様に縦シフトの最大値は`H - 1`
- `(W - 1)(H - 1)`個の組み合わせで実際にAをシフトしてみてBになるか試せばいい
- Rubyではこの「ずらす」は`Array#rotate`でできる
  - ない言語なら実装する

```ruby
h, w = gets.split.map &:to_i
a = h.times.map{ gets.chomp.chars }
b = h.times.map{ gets.chomp.chars }

(0...h).each do |y_shift|
  a_y_shifted = a.rotate(y_shift)
  (0...w).each do |x_shift|
    a_shifted = a_y_shifted.map{|row| row.rotate(x_shift) }
    if a_shifted == b
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
```
- テストケース4をよく見ると...

## C - Cross

### 問題
- 縦H * 横Wマスのグリッドがあるよ
- マスは`.`か`#`のどちらかだよ
- `#`でできたバツ印があるよ
- バツ印以外のところに`#`はないよ
- バツ印は重なったり、繋がったりしてないよ
- バツ印の中心から端までの長さをサイズと定義するよ
  ```
  サイズ1     サイズ2
               #...#
    #.#        .#.#.
    .#.        ..#..
    #.#        .#.#.
               #...#
  ```
- バツ印の個数をサイズごとに教えてね

### 解法

- 「中心`(x, y)`のバツ印のサイズ」を返す関数を考える
  - バツ印でなければサイズ = 0とする
- レベル1以上のバツ印の判定
  - (x, y)の1マス先の四隅  
    `(x + 1, y + 1)`, `(x + 1, y - 1)`, `(x - 1, y + 1)`, `(x - 1, y - 1)`が
    すべて`#`ならレベル1以上
- レベル2以上のバツ印の判定
  - レベルが1以上かつ、  
    (x, y)の2マス先の四隅  
    `(x + 2, y + 2)`, `(x + 2, y - 2)`, `(x - 2, y + 2)`, `(x - 2, y - 2)`が
    すべて`#`ならレベル2以上
- これを踏まえると、以下のような再帰関数が作れる
  - 中心から始めて、1レベルずつ外側に広げながらバツ印を調べるイメージ
```
c: 与えられたグリッド
cross(x: 中心のx座標, y: 中心のy座標, lev: 現在のレベル) {
  next_lev = lev + 1 // 挑戦するレベル
  もし c の (x + next_lev, y + next_lev) が '#' かつ
       c の (x + next_lev, y - next_lev) が '#' かつ
       c の (x - next_lev, y + next_lev) が '#' かつ
       c の (x - next_lev, y - next_lev) が '#' なら
    return cross(x, y, next_lev) // next_lev以上が確定し、それ以降を調べる

  でなければ
    return lev // next_levではなかったので、その1つ前のlevまでがバツ印
}
```
- これを使って数えていく
```ruby
# メソッド内でも参照できるようにグローバル変数にしておく
# 手っ取り早いしパフォーマンス的にも有利
# でも競プロ以外でやっちゃダメだよ
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
```

## D - AABCC

### 解法
- 上限を調べてゴリ押しで通った
```ruby
require 'prime'

n = gets.to_i
an = 54
bn = 819
cn = 25112
ps = Prime.take(cn)
ans = 0

(0...an).each do |ai|
  va = ps[ai]**2
  ((ai + 1)...bn).each do |bi|
    vb = va * ps[bi]
    break if vb > n
    ((bi + 1)...cn).each do |ci|
      vc = vb * ps[ci]**2
      break if vc > n
      ans += 1
    end
  end
end
puts ans
```