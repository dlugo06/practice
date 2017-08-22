
def solvePuzzle(num)
  num_holes = 0
  num_arr = num.to_s.split('')
  ones = [0,4,6,9]
  num_arr.each do |n|
    n = n.to_i
    if ones.include?(n)
      num_holes += 1
    elsif n == 8
      num_holes += 2
    end
  end
  num_holes
end


solvePuzzle(1288)

#630 = 2

#1288 = 4
