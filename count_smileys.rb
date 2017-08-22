def count_smileys(arr)
  count = 0

  arr.each do |face|
    if face.length == 3
      if face[1] == '-' || face[1] == '~'
        if (face[0] == ':' || face[0] == ';') && (face[-1] == ')' || face[-1] == 'D')
          count += 1
        end
      end
    elsif face.length == 2
      if (face[0] == ':' || face[0] == ';') && (face[-1] == ')' || face[-1] == 'D')
        count += 1
      end
    end
  end

  count
end

p count_smileys([": )", "8)", ": )", ")", "D", ";~(", ":("])
