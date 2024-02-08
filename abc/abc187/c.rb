n = gets.to_i
s = n.times.map{ gets.chomp }.uniq
a, b = s.partition{ |i| i[0] == "!"} #先頭が"!"であるものとそうでないものに分ける
a.map{ |i| i.delete!("!")}
f1 = a & b #どちらにも属する要素が"!"を付けても付けなくても存在する文字列
if f1 == []
    puts "satisfiable"
else
    puts f1[0]
end