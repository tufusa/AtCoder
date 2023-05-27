n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
(0...n).each do |l| #lとrの組み合わせを全探索
    m = a[l] #最小値の初期値は範囲の一番左
    (l...n).each do |r|
        #[l..r]の最小値は,前回までの最小値と新しく加わった要素(r)の小さいほうなのを利用して,範囲の最小値をO(1)で求める
        m = a[r] if a[r] < m
        #lから右がすべて最小値mで取れた時が取り得る最大の値なので,それが現在の解候補より小さい場合はこれ以上探索しなくてよい(最小値は単調減少なので)
        break if m * (n - l) < ans
        res = m * (r - l + 1)
        ans = res if res > ans
    end
end
puts ans