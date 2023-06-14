n = gets.to_i
a = gets.split.map{|x| x.to_i % 200} #差が2の倍数ということは2で割った余りが互いに等しいということ よって余りだけ見る
ans = 0
a.group_by(&:itself).each_value do |arr| #group_by(&:itself)で同じ値同士をまとめたハッシュができる
    c = arr.size #すなわち余りが同じ数字の数
    ans += c * (c - 1) / 2 #c個の中から2個選ぶ組み合わせ
end
puts ans