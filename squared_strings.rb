def diag_1_sym(strng)
  output = ''
  arr = strng.split("\n")
  length = arr.first.length
  (0..length-1).each do |ind|
    arr.each do |string|
      output << string[ind]
    end
    output << "\n"
  end
  output.chomp
end
def rot_90_clock(strng)
  arr = strng.split("\n").reverse!
  diag_1_sym(arr.join("\n"))
end
def selfie_and_diag1(strng)
  output = ''
  inter = ''
  arr = strng.split("\n")
  length = arr.first.length
  (0..length-1).each do |ind|
    arr.each do |string|
      inter << string[ind]
    end
    inter << "\n"
  end
  inter_arr = inter.split("\n")
  arr.each_with_index {|str, index| output << str + '|' + inter_arr[index] + "\n"}
  output.chomp
end

def oper(fct, s)
  fct.call(s)
end

s = "abcd\nefgh\nijkl\nmnop"
# diag_1_sym(s)
# rot_90_clock(s)
# selfie_and_diaoper(diag_1_sym, s)g1(s)
oper(method(:diag_1_sym), s)
