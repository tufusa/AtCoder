n = gets.to_i
s = gets.chomp.bytes #文字列は数値配列にしたほうが速い
qn = gets.to_i
query = qn.times.map{ gets.split.map(&:to_i) }
flip = 0 #反転しているかのフラグ, 実際に反転はさせない
query.each do |q|
    if q[0] == 1
        if flip == 0
            a = q[1] - 1
            b = q[2] - 1
        else #反転していたら,中央(n番目)から数え始めて末尾(2n-1番目)の次は先頭に戻る
            a = (n + q[1] - 1) % (2 * n)
            b = (n + q[2] - 1) % (2 * n)
        end
        s[a], s[b] = s[b], s[a]
    else
        flip = (flip + 1) % 2
    end
end
s[0...n], s[n...2*n] = s[n...2*n], s[0...n] if flip == 1 #最後に実際に反転させる
puts s.pack("c*") #数値配列を文字列に戻す