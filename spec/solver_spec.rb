require './solver'
require 'rspec'

describe Solver do
  before(:each) do
    @solver_instance = Solver.new
  end

  describe '#factorial' do
    it 'returns the factorial of 3' do
      expect(@solver_instance.factorial(3)).to eq(6)
    end

    it 'returns the factorial of 0' do
      expect(@solver_instance.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative numbers' do
      expect { @solver_instance.factorial(-5) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns a reversed string' do
      expect(@solver_instance.reverse('fitia')).to eq('aitif')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" because divisible by 3' do
      expect(@solver_instance.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" because divisible by 5' do
      expect(@solver_instance.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" because divisible by 3 and 5' do
      expect(@solver_instance.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns number as a string because not divisible by 3 or 5' do
      expect(@solver_instance.fizzbuzz(7)).to eq('7')
    end
  end
end
