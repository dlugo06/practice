require 'prime'

def sumOfDivided(lst)
  out =[]
  primes = []
  lst.each do |e|
    factors = Prime.prime_division(e)
    factors.each{|n| primes << n.first }
  end
  unless primes.nil?
    primes.select!{|n| n > 1}
    primes.uniq!.sort!.each do |prime|
      sum = 0
      lst.each do |i|
        sum += i if i % prime == 0
      end
      out << [prime, sum]
    end
  end
  out
end




# I = [12, 15] # result = [[2, 12], [3, 27], [5, 15]]
# explanation: 2, 3, 5 are primes of [12, 15]

sumOfDivided([12, 15])
