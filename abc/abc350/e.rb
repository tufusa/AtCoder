$n, $a, $x, $y = gets.split.map &:to_i
$memo = { 0 => 0 }

def f(n)
  $memo[n] ||= [
    $x + f(n / $a),
    (6 * $y + f(n / 2) + f(n / 3) + f(n / 4) + f(n / 5) + f(n / 6)) / 5.0
  ].min
end

puts f($n)