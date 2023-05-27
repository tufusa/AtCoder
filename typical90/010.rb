n = gets.to_i
stu = n.times.map{ gets.split.map(&:to_i) }
q = gets.to_i
qlist = q.times.map{ gets.split.map(&:to_i) }
num1 = []
num2 = []
score1 = []
score2 = []
sum1 = [0]
sum2 = [0]
ans = []
for i in 0...n
    if stu[i][0] == 1
        num1.push(i + 1)
        score1.push(stu[i][1])
    else
        num2.push(i + 1)
        score2.push(stu[i][1])
    end
end
score1.each do |s|
    sum1.push(sum1[-1] + s) #累積和
end
score2.each do |s|
    sum2.push(sum2[-1] + s)
end
i = 0
while(i < q)
    l = qlist[i][0]
    r = qlist[i][1]
    l1 = num1.bsearch_index{ |x| x >= l } #二分探索
    if l1.nil? #必ずnilになった時の処理をする
        l1 = num1.size
    end
    r1 = num1.bsearch_index{ |x| x > r }
    if r1.nil?
        r1 = num1.size
    end
    l2 = num2.bsearch_index{ |x| x >= l }
    if l2.nil?
        l2 = num2.size
    end
    r2 = num2.bsearch_index{ |x| x > r }
    if r2.nil?
        r2 = num2.size
    end
    ans.push([sum1[r1] - sum1[l1], sum2[r2] - sum2[l2]])
    i += 1
end
ans.each{|e| puts e.map(&:to_s).join(" ")}