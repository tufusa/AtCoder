# frozen_string_literal: true

$n = gets.to_i
s = gets.chomp.chars
ps = []
prev = 0
s.each do |c|
  if c == '('
    prev += 1
    ps << prev
  elsif c == ')'
    prev -= 1
    ps << prev
  else
    ps << nil
  end
end

$ps = ps
$clear = Array.new($n, nil)

def dfs(i)
  if i == $n
    $clear[i] = false
    return
  end
  lev = $ps[i]
  head = i + 1
  while true
    if head >= $n
      $clear[i] = false
      return
    end

    if $ps[head] == lev + 1
      res = dfs(head)
      if res
        head = res + 1
      else
        $clear[i] = false
        return
      end
    elsif $ps[head] == lev - 1
      $clear[i] = true
      return head
    else
      head += 1
    end
  end
end

head = 0
ans = []

while true
  break if head == $n
  if s[head] == '(' && $clear[head] != false
    res = dfs(head)
    ans << s[head] if !res
    head = (res || head) + 1
  else
    ans << s[head]
    head += 1
  end
end

puts ans.join