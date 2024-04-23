n = gets.to_i
as = gets.split.map(&:to_i).sort
bs = gets.split.map(&:to_i).sort
cs = gets.split.map(&:to_i).sort
ds = gets.split.map(&:to_i).sort

def search(arr, oths, cad)
  arr.each do |a|
    nf = false
    ls = oths.map { _1.bsearch { |v| v >= a } || (nf = true) }
    next if nf

    cad << ls.max - a
  end
end

cad = []
arrs = [as, bs, cs, ds]
arrs.each { search(_1, arrs, cad) }

puts cad.min