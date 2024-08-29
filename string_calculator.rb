class StringCalculator

  def self.add(numbers)
    return 0 if numbers.nil?
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers[4..]
    end

    numbers = numbers.split(/#{delimiter}/).map(&:to_i)
    numbers.sum
  end
end