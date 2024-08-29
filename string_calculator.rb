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
    negatives = numbers.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
    numbers.reject { |n| n > 1000 }.sum
  end
end