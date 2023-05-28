# ABC301 解説

## A - Overall Winner

### 問題

- TくんとAくんが$N$回試合をするよ
- 各試合でどっちが勝ったかを表す長さ$N$の文字列が与えられるよ
- 勝ち数の多い総合勝者はどっちか答えてね
- ただし、勝ち数が同じなら先にその勝ち数に達したほうを総合勝者とするよ

### 解法

#### 素直なやり方

- やるだけ
- $N \le 100$ なので余裕をもって間に合う

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