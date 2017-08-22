def remove_url_anchor(url)
  index = url.index('#')
  if index.nil?
    return url
  else
    url.sub(url[index..-1], '')
  end
end

puts remove_url_anchor('www.codewars.com')
