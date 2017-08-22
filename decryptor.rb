def decrypt(roman)
  decoded = ''
  alphabet = ' abcdefghijklmnopqrstuvwxyz'.split('')
  roman.split(' ').map do |e|
    sum = 0
    digits_arr = e.scan(/\d/)
    unless digits_arr.empty?
      e.scan(/\d/).each { |num| sum += num.to_i }
      sum = sum - 27 if sum > 27
      decoded << alphabet[sum]
    end
  end
  decoded
end


#"x20*6<xY y_r9L" --> "8 9" --> "hi"

decrypt("BDr]8bRd2PY pHv6YpGF7 zP]5p P^oq@^ 0q44[Ri FRZoaY0B3J wS2@^]qxbTAjaF6vXu") #'jmehch'
