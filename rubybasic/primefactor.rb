def find_factor number
  factors = []
    (2..number).each do |i|
    if number% i == 0
      factors << i
      value =value/i
    end
  end
  factors
end

def isprime number
  (1..number-1).each do|i|
    if number% i == 0 && i != 1
      return false
    end
  end
  return true
end


def prime_factor factors
  length = factors.length-1
  primes =[]
  (0..length).each do |i|
    if isprime factors[i]
      primes << factors[i]
  end
end
primes
end

factors = find_factor 99
prime=prime_factor factors
largest = prime.max

puts"#{prime}"
