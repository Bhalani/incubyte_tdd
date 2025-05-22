module StringCalculator
  def self.add(numbers)
    numbers.strip!
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match?(/\A\d+\z/)

    delimeter = numbers.match(/(?<=^\/\/).(?=\n)/) || ",|\n"
    numbers = numbers.gsub(/\/\/.\n/, "")
    return sum_of_parse_numbers(numbers, delimeter)
  end

  private

  def self.sum_of_parse_numbers(numbers, delimeter)
    numbers.split(/#{delimeter}/).reduce(0) do |sum, number|
      sum += number.to_i
    end
  end
end
