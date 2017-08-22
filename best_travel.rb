def choose_best_sum(t, k, ls)
  ls.combination(k).to_a.map!{|a| a.reduce(:+)}.select{|n| n <= t}.max
end


ts = [50, 55, 56, 57, 58]
choose_best_sum(163, 3, ts) # 163
