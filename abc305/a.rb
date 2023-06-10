n = gets.to_i
a = n / 5 * 5
puts [a, a + 5].min_by{ (_1 - n).abs }