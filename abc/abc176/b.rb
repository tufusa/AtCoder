puts gets.chomp.chars.map(&:to_i).sum % 9 == 0 ? "Yes" : "No"