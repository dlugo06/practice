def encrypt(text, n)
  #your code here
  seconds = ''
  others = ''
  if n == 0
    return text
  else
    text.split('').each_with_index do |e,i|
      if i % 2 == 0
        seconds << e
      else
        others << e
      end
    end
  end

  if n > 1
    encrypt(others + seconds, n-1)
    n -= 1
  end
  others + seconds
end

encrypt("This is a test!", 2) # "hsi  etTi sats!" "s eT ashi tist!"
