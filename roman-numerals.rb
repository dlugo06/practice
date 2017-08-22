def solution(number)
  ref_hash = {M: 1000, CM: 900, D: 500, CD: 400, C: 100,  XC: 90, L: 50, XL:40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }
  output_string = ''

  # reducing_number = number

  ref_hash.each do |k, v|
    while number >= v
        if number / v >= 1
          output_string << k.to_s
          number -= v
        end
    end
  end

  puts output_string

  #   case
  #   when reducing_number / ref_hash[:M] >= 1
  #     output_string += 'M'
  #     reducing_number -= ref_hash[:M]
  #   when reducing_number / ref_hash[:D] >= 1
  #     if reducing_number / ref_hash[:CM] >= 1
  #       output_string += 'CM'
  #       reducing_number -= 900
  #     else
  #       output_string += 'D'
  #       reducing_number -= ref_hash[:D]
  #     end
  #   when reducing_number / ref_hash[:C] >= 1
  #     if reducing_number / 400 >= 1
  #       output_string += 'CD'
  #       reducing_number -= 400
  #     else
  #       output_string += 'C'
  #       reducing_number -= 100
  #     end
  #   when reducing_number / ref_hash[:L] >= 1
  #     if reducing_number / 90 >= 1
  #       output_string += 'XC'
  #       reducing_number -= 90
  #     else
  #       output_string += 'L'
  #       reducing_number -= 50
  #     end
  #   when reducing_number / ref_hash[:X] >= 1
  #     if reducing_number / 40 >= 1
  #       output_string += 'XL'
  #       reducing_number -= 40
  #     else
  #       output_string += 'X'
  #       reducing_number -= 10
  #     end
  #   when reducing_number / ref_hash[:V] >= 1
  #     if reducing_number / 9 >= 1
  #       output_string += 'IX'
  #       reducing_number -= 9
  #     else
  #       output_string += 'V'
  #       reducing_number -= 5
  #     end
  #   when reducing_number / ref_hash[:I] >= 1
  #     if reducing_number / 4 >= 1
  #       output_string += 'IV'
  #       reducing_number -= 4
  #     else
  #       output_string += 'I'
  #       reducing_number -= 1
  #     end
  #   end
  # end
  #
  # puts output_string

end

solution(384)
