axy = gets.split.map &:to_i
bxy = gets.split.map &:to_i
cxy = gets.split.map &:to_i
ab2 = (bxy[0] - axy[0])**2 + (bxy[1] - axy[1])**2
bc2 = (cxy[0] - bxy[0])**2 + (cxy[1] - bxy[1])**2
ca2 = (axy[0] - cxy[0])**2 + (axy[1] - cxy[1])**2
l = [ab2, bc2, ca2]
m = l.max
l.delete m
puts (l.sum == m ? 'Yes' : 'No')
