n = gets.to_i
print "AGC"
if n >= 42
    puts "%03d" % (n + 1)
else
    puts "%03d" % n
end