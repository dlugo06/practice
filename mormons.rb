def mormons(starting_number, reach, target, count = 0)
  return p count if starting_number >= target
  starting_number += starting_number * reach
  count += 1
  mormons(starting_number, reach, target, count)
end

mormons(40,2,121) # 2
