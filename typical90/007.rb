n = gets.to_i
a = gets.split.map(&:to_i).sort
q = gets.to_i
b = q.times.map{ gets.to_i }
ans = []
b.each do |stu|
    idx = a.bsearch_index{ |x| x >= stu } #インデックスを返す二分探索
    if idx == 0
        ans.push(a[0] - stu)
    elsif idx.nil?
        ans.push(stu - a[-1])
    else
        ans.push([a[idx] - stu, stu - a[idx - 1]].min)
    end
end
puts ans