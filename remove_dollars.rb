def remove_dollars(hash)
  values = []
  keys = []
  if Hash === hash
    hash.each {|k,v| values << v; keys << k }
    keys.map! { |key|
      new_key = key.to_s.gsub("$","_")
      hash[new_key] = hash.delete(key)
    }
  elsif Array === hash
    hash.each {|v| values << v}
  end

  values.each do |value|
    remove_dollars(value) if value.kind_of?(Hash) || value.kind_of?(Array)
  end

  p hash
end

remove_dollars({'key$1': 'abc', 'key$2': ['def','ghi'], 'key3': [{'key$4':[1,2] , 'key$5': 'jkl'}]})
