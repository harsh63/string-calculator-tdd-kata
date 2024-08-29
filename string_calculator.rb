class StringCalculator

  def self.add(numbers)
    return 0 if numbers.nil?
    return 0 if numbers.empty?

    numbers = numbers.split(',').map(&:to_i)
    numbers.sum
  end
end