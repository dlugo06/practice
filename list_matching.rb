def match(matchtype, left, right)
  match = []

  if matchtype == 'right'
    right.each_with_index do |i, outer|
      match_locations = []
      left.each_with_index do |j, inner|
        match_locations << inner if i == j
      end
      if match_locations.empty?
        match << [-1, outer]
      else
        match_locations.each do |loc|
          match << [loc, outer]
        end
      end
    end
  else
    left.each_with_index do |i, outer|
      match_locations = []
      right.each_with_index do |j, inner|
        match_locations << inner if i == j
      end
      if match_locations.empty?
        match << [outer, -1]
      else
        match_locations.each do |loc|
          match << [outer, loc]
        end
      end
    end
    if matchtype == 'inner'
      match.map! { |pair| pair.include?(-1)? nil : pair}
    end
  end
  p match.compact
end




match('left', ['apple', 'grape', 'melon'], ['kiwi','pear', 'apple', 'kiwi', 'apple'])
# [
#   [0,2],
#   [1,0],
#   [2,0],
#   [3,-1]
# ]
