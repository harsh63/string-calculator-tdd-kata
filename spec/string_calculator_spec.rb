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
  end
end