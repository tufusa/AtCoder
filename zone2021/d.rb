s = gets.chomp.bytes
rev = 0 #たくさん反転する場合は実際反転はせず反転の状態を保存する変数で管理
ans = []
s.each do |c|
    if c == 82
        rev = (rev + 1) % 2
    else
        if rev == 0
            if ans[-1] == c
                ans.pop
            else
                ans.push(c)
            end
        else
            if ans[0] == c
                ans.shift
            else
                ans.unshift(c)
            end
        end
    end
end
puts (rev == 0) ? ans.pack("c*") : ans.reverse.pack("c*")