def minimumSwaps(popularity)
  target = popularity.sort.reverse
  swaps = 0
  b = 0
  len = target.length
  (0..len).each do |e|
    if popularity[e] == target[b]
      b += 1
    else
      swaps += 1
    end
  end
  p swaps
  swaps
end


minimumSwaps([3,1,2,4]) # should output 2 operation # arr is [3,1,2,4]
