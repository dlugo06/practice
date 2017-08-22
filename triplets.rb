# def triplets(t, d)
#   triplets = []
#   d.sort!
#
#   d.each_with_index do |i, index|
#     unless d[index+1].nil? || d[index+2].nil?
#       j = d[index+1]
#       k = d[index+2]
#       if i < j && i < k && j < k
#         if i + j + k <= t
#           triplets << [i, j, k]
#         end
#       end
#     end
#   end
#
#   p triplets.uniq.count
# end







def triplets(t, d)
  triplets = []
  d.sort!
  length = d.length - 1
  d.each_with_index do |i, index|
    (index+1..length).each do |j|
      (index+2..length).each do |k|
        if i < d[j] && i < d[k] && d[j] < d[k]
          if i + d[j] + d[k] <= t
            triplets << [i, d[j], d[k]]
          end
        end
      end
    end
  end

  p triplets.uniq.count
  p triplets
end




# triplets(7, [4,3,1,2,4]) # 2
triplets(8,[5,1,2,3,4,6]) # 3
