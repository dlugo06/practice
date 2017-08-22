def recover_secret triplets
  l = triplets.flatten.first
  temp = []
  triplets.each_with_index do |trip, i|
    if trip.include?(l)
      trip.index(l) >
    end
    trip.each_with_index do |m, j|

    end
  end
end

# take first letter
# find all instance of letter
# move letters surrounding letter after or before
# do for every letter



# secret_1 = "whatisup"
triplets_1 = [
  # ['t','u','p'],
  ['w','h','i'],
  # ['t','s','u'],
  # ['a','t','s'],
  ['h','a','p'],
  # ['t','i','s'],
  ['w','h','s']
]

# t
# tup,tsu,ats,tis
# tsup,ats,tis
# atsup,tis
# atisup

# u
# tup, tsu
# tsup

# p
# tup, hap
# tuhap

# w
# whi,whs
# whis

# h
# whi, hap, whs
# whiap, whs
# whiaps


recover_secret(triplets_1)
