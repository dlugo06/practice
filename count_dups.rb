def duplicate_count(text)
    text.split('').each {|e| e.downcase! if e.kind_of?(String)}.group_by(&:itself).values.select{|a| a.count > 1}.count
end

duplicate_count("abcdeaB")

# Test.assert_equals(duplicate_count(""), 0)
# Test.assert_equals(duplicate_count("abcde"), 0)
# Test.assert_equals(duplicate_count("abcdeaa"), 1)
# Test.assert_equals(duplicate_count("abcdeaB"), 2)
# Test.assert_equals(duplicate_count("Indivisibilities"), 2)
