#simplest approach
#divide by every number less than the number -> if the remainder is ever 0 -> not a prime
def my_prime1?(number)
  if (number < 2)
    false
  else
    divisors = (2..number-1).to_a
    prime = !(divisors.any? {|divisor| number%divisor==0})
  end
end

#divisors only go up to n/2
def my_prime2?(number)
  if (number < 2)
    false
  else
    divisors = (2..(number/2)).to_a
    prime = !(divisors.any? {|divisor| number%divisor==0})
  end
end

#divisors only go up to sqrt of 2
def my_prime3?(number)
  if (number < 2)
    false
  else
    divisors = (2..(Math.sqrt(number))).to_a
    prime = !(divisors.any? {|divisor| number%divisor==0})
  end
end
