def sort_in_place(arr)
  left = 0
  right = arr.length - 1
  while left < right
    left += 1 while arr[left] == 0
    right -= 1 while arr[right] == 1
    if left < right
      arr[left], arr[right] = arr[right], arr[left]

    end
  end
  p arr
end

arr = [1,0,0,0,1,1,0,0,1,1,0,1,0,1]

sort_in_place(arr)
