require 'calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of 2 numbers' do
      calculator = Calculator.new

      result = calculator.add(1, 2)

      expect(result).to eq(3)
    end

    it 'returns the sums of 2 random values' do
      calculator = Calculator.new
      first_value = Random.rand(1000)
      second_value = Random.rand(1000)

      result = calculator.add(first_value, second_value)

      expect(result).to eq(first_value + second_value)
    end
  end

  describe '#factorial' do
    it 'returns 1 for 0!' do
      calc = Calculator.new

      result = calc.factorial(0)

      expect(result).to eq(1)
    end

    it 'returns 120 for 5!' do
      calc = Calculator.new

      result = calc.factorial(5)

      expect(result).to eq(120)
    end
  end
end
