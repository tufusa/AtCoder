n, qn = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
query = qn.times.map{ gets.split.map(&:to_i) }
shift = 0
ans = []
query.each do |q|
    case q[0]
        when 1
            a[q[1] - shift - 1], a[q[2] - shift - 1] = a[q[2] - shift - 1], a[q[1] - shift - 1]
        when 2
            shift = (shift + 1) % n
        when 3
            ans.push(a[q[1] - shift - 1])
    end
end
puts ans