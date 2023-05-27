n, m = gets.split.map(&:to_i)
path = m.times.map{ gets.split.map(&:to_i) }
$aft = n.times.map{ [] }
ans = 0
path.each do |pt|
    $aft[pt[0] - 1].push(pt[1] - 1)
end
init = n.times.map{ false }
$seen = init.clone
def dfs(x)
    return if $seen[x]
    $seen[x] = true
    $aft[x].each{ |i| dfs(i) }
end
for i in 0...n
    $seen = init.clone
    dfs(i)
    ans += $seen.count{ |x| x }
end
puts ans