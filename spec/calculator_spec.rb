# Your code here

require 'calculator'

describe Calculator do

  let(:calculator){ Calculator.new }

  describe '#add' do
    it "adds two positive numbers" do
      expect(calculator.add(1.5, 4)).to eq(5.5)
    end

    it "adds negative numbers" do
      expect(calculator.add(-1, -4)).to eq(-5)
    end
  end

  describe '#subtract' do
    it "subtracts two numbers" do
      expect(calculator.subtract(1, 4)).to eq(-3)
    end

    it "subtracts negative numbers" do
      expect(calculator.subtract(5.567, -1)).to eq(6.567)
    end
  end

  describe '#multiply' do
    it "multiplies two numbers" do
      expect(calculator.multiply(-3, 4)).to eq(-12)
    end

    it "multiplies negative numbers" do
      expect(calculator.multiply(5.567, 1)).to eq(5.567)
    end
  end

  describe 'divide' do
    it "divides two numbers" do
      expect(calculator.divide(-3, 4)).to eq(-0.75)
    end

    it "divides negative numbers" do
      expect(calculator.divide(4.5, 3)).to eq(1.5)
    end
  end

  describe 'pow' do
    it "raises a number to a power" do
      expect(calculator.pow(3, 3)).to eq(27)
    end

    it "raises a number to a power" do
      expect(calculator.pow(4.5, 0)).to eq(1)
    end

    it "raises a number to a negative power" do
      expect(calculator.pow(2, -1)).to eq(0.5)
    end

    it "raises a number to a decimal power" do
      expect(calculator.pow(2, -1.0)).to eq(0.5)
    end
  end

  describe 'sqrt' do
    it "squares positive numbers" do
      expect(calculator.sqrt(4)).to eq(2)
    end

    it "raises error for a negative input" do
      expect{ calculator.sqrt(-16) }
        .to raise_error(ArgumentError)
    end
  end



end
