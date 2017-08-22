def queue_time(customers, n)
  # create registers and set value to 0.
  registers = Array.new(n,0)
  # loop through each customer
  # assign to register based on lowest value
  (0..customers.length-1).each do |c|
    registers[registers.index(registers.min)] += customers[c]
    p registers

  end
  # return max value
  puts registers.max
end

queue_time([10,2,3,3,10], 2) # 10

# queue_time([5,3,4], 1) # 12
