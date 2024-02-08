k, g, m = gets.split.map(&:to_i)
gls = mag = 0
k.times do
  if gls == g
    gls = 0
  elsif mag == 0
    mag = m
  else
    dif = g - gls
    if dif >= mag
      gls += mag
      mag = 0
    else
      gls = g
      mag -= dif
    end
  end
end
puts "#{gls} #{mag}"
