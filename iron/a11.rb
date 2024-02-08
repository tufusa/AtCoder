n, x = gets.split.map &:to_i
as = gets.split.map &:to_i

def bsearch_index(ary, val)
  left, right = 0, ary.size
  while true
    mid = (left + right) / 2
    if ary[mid] > val
      right = mid
    elsif ary[mid] < val
      left = mid
    else
      return mid
    end
  end
end

puts bsearch_index(as, x) + 1