puts (/\A[A-Z][1-9]\d{5}[A-Z]\Z/.match? gets.chomp) ? 'Yes' : 'No'