def pascal(depth)
  out = []
  one = [1]
  two = [1, 1]
  out << one if depth > 0
  out << two if depth > 1
  if depth > 2
    out << [1, 2, 1]
    (3 - depth).times do |d|
      new_line = [1]
      out.last.each_with_index do |num, i|
        next_num = out.last[i+1]
        new_line << next_num + num unless next_num.nil?
      end
      new_line << 1
      out << new_line
    end
  end
  p out
end


# Test.assert_equals(pascal(1), [[1]]);
# Test.assert_equals(pascal(5), [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]);

pascal(6)
