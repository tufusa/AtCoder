n = gets.to_i
qn = gets.to_i
qs = qn.times.map{ gets.split.map{ _1.to_i - 1} }
boxes = n.times.map{ [] }
exsit = {}
qs.each_with_index do |q, idx|
  if q[0] == 0
    i = q[1]; j = q[2]
    boxes[j] << [i, idx]
    exsit[i] = [] if !exsit[i]
    exsit[i] << [j, idx]
  end
end
boxes = boxes.map &:sort
exsit = exsit.to_h{|k, v| [k, v.sort.slice_when{|x, y| x[0] != y[0] }.map{|es| es[0] }] }
res = []
qs.each_with_index do |q, idx|
  i = q[1]; j = q[2]
  if q[0] == 1
    res << boxes[i].filter{|c| c[1] < idx }.map{ (_1[0] + 1).to_s }.join(?\s)
  elsif q[0] == 2
    res << exsit[i].filter{|b| b[1] < idx }.map{ (_1[0] + 1).to_s }.join(?\s)
  end
end
puts res