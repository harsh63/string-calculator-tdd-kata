RSpec.describe StringCalculator do
  it "defines the StringCalculator class" do
    expect(Object.const_defined?("#{described_class}")).to be true
  end
end