require "./string_calculator.rb"

RSpec.describe StringCalculator do
  it "defines the StringCalculator class" do
    expect(Object.const_defined?("#{described_class}")).to be true
  end

  it "has the add method" do
    expect(described_class).to respond_to(:add)
  end

  describe '.add' do
    it "accepts numbers argument" do
      expect { described_class.add("123") }.not_to raise_error
    end

    it "returns 0 when the input is nil" do
      expect(described_class.add(nil)).to eq(0)
    end

    it "returns 0 when the input is empty" do
      expect(described_class.add("")).to eq(0)
    end

    it "returns the same number when only one input is given" do
      expect(described_class.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(described_class.add("1,2")).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(described_class.add("1,2,3,4")).to eq(10)
    end

    it "returns the sum when numbers are separated by new lines" do
      expect(described_class.add("1\n2,3")).to eq(6)
    end

    it "returns the sum when a custom delimiter is used" do
      expect(described_class.add("//;\n1;2")).to eq(3)
      expect(described_class.add("//*\n2*2")).to eq(4)
      expect(described_class.add("//^\n3^2")).to eq(5)
    end

    it "raises an error when negative numbers are passed" do
      expect { described_class.add("1,-2,3") }.to raise_error("Negatives not allowed: -2")
    end

    it "ignores numbers greater than 1000" do
      expect(described_class.add("2,1001")).to eq(2)
    end

    it "supports delimiters of any length" do
      expect(described_class.add("//[***]\n1***2***3")).to eq(6)
    end
  end
end