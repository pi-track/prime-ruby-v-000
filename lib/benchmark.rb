require_relative "./prime.rb"
require 'benchmark'
require 'prime'
#create a range of 1-10,000 to search for primes across
numbers = (1..10000).to_a

#benchmark
Benchmark.bm do |bm|
  bm.report('simplest     ') {numbers.select {|number| my_prime1?(number)}}
  bm.report('up to n/2    ') {numbers.select {|number| my_prime2?(number)}}
  bm.report('up to sqrt(n)') {numbers.select {|number| my_prime3?(number)}}
  bm.report('ruby math    ') {numbers.select {|number| number.prime?}}
end
