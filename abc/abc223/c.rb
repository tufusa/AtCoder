n = gets.to_i
rope = n.times.map{ gets.split.map(&:to_i) }
length = rope.map(&:first).sum
sec = rope.map{ _1.to_f / _2 }
leftsec = []
rightsec = []
leftlen = []
rightlen = []
time = 0
for i in 0...sec.size
    leftsec << (leftsec.empty? ? 0 : leftsec[-1]) + sec[i]
    rightsec << (rightsec.empty? ? 0 : rightsec[-1]) + sec[-i - 1]
end
lnow = 0
rnow = 0
for t in 1..leftsec[-1]
    if leftsec[lnow] > t
        lnow += 1
    end
    if rightsec[rnow] > t
        rnow += 1
    end
    leftlen.push(lnow)
    rightlen.push(rnow)
end
p leftsec
p rightsec
p leftlen
p rightlen