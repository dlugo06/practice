def count_multibyte_char(string)
  multibyte = 0
  string.each_char do |c|
    count = 0
    puts "new char"
    c.each_byte do |b|
      puts b
      count += 1
    end
    multibyte += 1 if count > 1
  end

  puts multibyte
end


count_multibyte_char('¥1000')
