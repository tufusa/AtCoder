# ABC301 解説

## A - Overall Winner

### 問題

- TくんとAくんが$N$回試合をするよ
- 各試合でどっちが勝ったかを表す長さ$N$の文字列が与えられるよ
- 勝ち数の多い総合勝者はどっちか答えてね
- ただし、勝ち数が同じなら先にその勝ち数に達したほうを総合勝者とするよ

### 解法

#### 素直なやり方

やるだけ  
$N \le 100$ なので十分間に合う

```ruby
n = gets.to_i
s = gets.chomp
t_win = s.count 'T'
a_win = s.count 'A'

if t_win > a_win
  puts 'T'
  exit
elsif a_win > t_win
  puts 'A'
  exit
end

count = { 'T' => 0, 'A' => 0 }
s.each_char do |c|
  count[c] += 1
  if count['T'] == t_win
    puts 'T'
    exit
  elsif count['A'] == a_win
    puts 'A'
    exit
  end
end
```

#### 実装を簡単にする考察

実は上の総合勝者の条件は一つにまとめられる

- 先に $\lceil \frac{n}{2} \rceil$ 回勝ったほうが総合勝者
  ($\lceil \, \rceil$ は天井関数)

要するに、先に半分勝ったら総合優勝が確定するということ
```ruby
n = gets.to_i
s = gets.chomp
win_count = (n / 2.0).ceil

count = { 'T' => 0, 'A' => 0 }
s.each_char do |c|
  count[c] += 1
  if count['T'] == win_count
    puts 'T'
    exit
  elsif count['A'] == win_count
    puts 'A'
    exit
  end
end
```

## B - Fill the Gaps

### 問題

- 長さ$N$の数列$A$が与えられるよ
- $A$に数を挿入して、隣り合う項の差の絶対値がすべて1になるようにしてね
  - 1 5 => 1 ***2*** ***3*** ***4*** 5
  - 4 1 => 4 ***3*** ***2*** 1
  - 3 4 1 3 => 3 4 ***3*** ***2*** 1 ***2*** 3
- 出来上がった数列を出力してね

### 解法

$N \le 100$ なので、各2項ずつ見て行って十分間に合う