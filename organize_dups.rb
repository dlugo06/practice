def group(arr)
  result = []
  arr.each do |e|
    group = []
    arr.collect {|x| x == e}.each_with_index {|v,i| group << arr[i] if v == true}
    result << group
  end
  result.uniq
end



group([3, 2, 6, 2, 1, 3])
# >>> [[3, 3], [2, 2], [6], [1]]
