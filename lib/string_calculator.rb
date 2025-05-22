module StringCalculator
  def self.add(numbers)
    numbers.strip!
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match?(/\A\d+\z/)

    delimiter = numbers.match(/(?<=^\/\/).(?=\n)/) || ",|\n"
    numbers = numbers.gsub(/\/\/.\n/, "")
    numbers = numbers.split(/#{delimiter}/).map(&:to_i)
    validate_numbers(numbers, delimiter)

    return sum_of_parse_numbers(numbers, delimiter)
  end

  private

  def self.sum_of_parse_numbers(numbers, delimiter)
    numbers.reduce(0) do |sum, number|
      sum += number
    end
  end

  def self.validate_numbers(numbers, delimiter)
    negative_numbers = numbers.select { |number| number < 0 }
    raise "negatives not allowed: #{negative_numbers.join(',')}" unless negative_numbers.empty?
  end
end
