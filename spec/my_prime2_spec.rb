require_relative './spec_helper'
require_relative '../lib/prime.rb'

describe "my_prime2?" do
  it 'returns true for prime numbers' do
    expect(my_prime2?(2)).to be(true)
    expect(my_prime2?(3)).to be(true)
    expect(my_prime2?(11)).to be(true)
    expect(my_prime2?(105557)).to be(true)
  end

  it 'returns false for non-prime numbers' do
    expect(my_prime2?(-1)).to be(false), "Be sure to account for negative numbers!"
    expect(my_prime2?(0)).to be(false)
    expect(my_prime2?(1)).to be(false)
    expect(my_prime2?(4)).to be(false)
    expect(my_prime2?(40)).to be(false)
    expect(my_prime2?(1763)).to be(false)
    expect(my_prime2?(101013)).to be(false)
  end
end
