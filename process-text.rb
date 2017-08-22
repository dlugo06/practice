def process_text(array)
  output = []
  array.each do |string|
    output << string.strip!
  end
  puts output.join(' ').strip
end

process_text(["Hi, \n", " Are you having fun?    "])
