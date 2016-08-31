
#Method that calculates the  prime factors of an integer  
def primes(n)
  prime_numbers = []
  if n == 1
    prime_numbers
  else
    2.upto(n) do |potential_prime|
      if n % potential_prime == 0
        prime_numbers << potential_prime
        return prime_numbers + primes(n/potential_prime)
      end
    end
  end
end

p primes(1)
p primes(4) #== [2, 2]
p primes(9) #== [3, 3]
p primes(12) #== [2, 2, 3]
p primes(34) #== [2, 17]
p primes(123123123) # == [3, 3, 41, 333667]