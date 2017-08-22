def minMoves(avg)
  target = avg.sort.reverse
  target.delete(1)
  moves = 0
  avg.each_with_index do |e, index|
    if e == avg[index + 1]

    else
      moves += 1
    end
  end
  (moves.to_f / target.count).ceil
end






minMoves([1,1,1,1,0,1,0,1]) # should output 3
