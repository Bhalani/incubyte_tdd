module StringCalculator
  def self.add(numbers)
    numbers.strip!
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match?(/\A\d+\z/)
    return sum_of_parse_numbers(numbers)
  end

  private

  def self.sum_of_parse_numbers(numbers)
    numbers.split(/,|\n/).reduce(0) do |sum, number|
      sum += number.to_i
    end
  end
end
