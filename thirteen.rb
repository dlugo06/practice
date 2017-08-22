def thirt(n)
    # your code
  patt = [1, 10, 9, 12, 3, 4]
  sums = []
  until sums[-1] == sums[-2] && !sums.empty?
    sum = 0

    n.to_s.split('').reverse!.map {|e| e.to_f}.each_with_index do |e,i|
      patt_index = i % patt.count
      sum += e*patt[patt_index]
    end
    p sums << sum
    thirt(sums.last)
  end
end
thirt(987654321)
