n, m = gets.split.map(&:to_i)
ab = m.times.map{ gets.split.map(&:to_i) }
k = gets.to_i #ボールの置き方の選択肢の個数がk<=16と十分小さいので全探索する
cd = k.times.map{ gets.split.map(&:to_i) }
dish = Array.new(n)
max = 0
(0...2**k).each do |b| #選択肢がそれぞれ2つなのでbit全探索, b[i]でiビット目がわかる
    res = 0
    dish.fill(false) #皿の状態をfalseで埋める
    (0...k).each do |i|
        dish[cd[i][b[i]] - 1] = true #i番目の人はbのiビット目の選択肢をとる
    end
    ab.each do |a|
        if dish[a[0] - 1] && dish[a[1] - 1]
            res += 1
        end
    end
    max = res if res > max #最大値更新
end
puts max