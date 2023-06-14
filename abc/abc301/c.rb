s = gets.chomp
t = gets.chomp

sat = s.count '@'
tat = t.count '@'
s.gsub!('@', '')
t.gsub!('@', '')

ss = s.chars
ts = t.chars

inter = ss & ts

sct = ss.tally
tct = ts.tally

inter.each do |c|
  si = sct[c]
  ti = tct[c]
  if si < ti
    sct.delete c
    tct[c] -= si
  elsif ti < si
    tct.delete c
    sct[c] -= ti
  else
    sct.delete c
    tct.delete c
  end
end

sct.each do |k, v|
  next if k =~ /[atcoder]/
  puts 'No'
  exit
end

tct.each do |k, v|
  next if k =~ /[atcoder]/
  puts 'No'
  exit
end

if sct.sum{ _1[1] } > tat || tct.sum{ _1[1] } > sat
  puts 'No'
  exit
end

puts 'Yes'
