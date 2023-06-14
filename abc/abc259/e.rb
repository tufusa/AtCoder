n = gets.to_i
nums = n.times.map { gets.to_i.times.map{ gets.split.map &:to_i } }
ps = {}
psm = {}

nums.each do |num|
    num.each do |pr, e|
        prs = pr.to_s.to_sym
        ps[prs] = [] if !ps[prs]
        ps[prs].push e
    end
end

ps.each_key do |k|
    psm[k] = ps[k].max(2)
end

res = []

nums.each do |num|
    lcm = 1
    psmt = psm.map{ |k, v| [k, v.dup] }
    num.each do |pr, e|
        prs = pr.to_s.to_sym
        if psm[prs][0] == e
            psmt[prs][0] = psmt[prs][1]
        end
    end
    psmt.each{ |k, v| lcm *= k.to_s.to_i ** v[0] }
    res.push lcm
end