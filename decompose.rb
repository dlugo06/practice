def decompose(n)
  sq = n**2
  p sq
  sol = [(n-1)**2]
  dig = (1..n-2).to_a.reverse!
  dig.each do |num|
    num = num**2
    sol << num if sol.inject(:+) < sq
  end
  p sol
end






decompose(11) # must return [1,2,4,10] not [2,6,9]
