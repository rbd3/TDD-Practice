require_relative 'solver'
require 'rspec'

describe Solver do
  describe '#factorial' do
    it 'returns the factorial of 3' do
      solver = Solver.new
      expect(solver.factorial(3)).to eq(6)
    end

    it 'returns the factorial of 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative numbers' do
      solver = Solver.new
      expect { solver.factorial(-5) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it ' return a reversed string' do
        string = Solver.new
      expect(string.reverse('fitia')).to eq('aitif')
    end
  end

  describe '#fizzbuzz' do
    it ' return fizz because divisible by 3' do
        number = Solver.new
      expect(number.fizzbuzz(6)).to eq('fizz')
    end

    it ' return buzz because divisible by 5' do
        number = Solver.new
      expect(number.fizzbuzz(10)).to eq('buzz')
    end

    it ' return fizzbuzz because divisible by 3 and 5' do
        number = Solver.new
      expect(number.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it ' return number because not divisible by 3 or 5' do
        number = Solver.new
      expect(number.fizzbuzz(15)).to eq('fizzbuzz')
    end

  end
  

end
