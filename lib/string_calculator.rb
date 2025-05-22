module StringCalculator
  def self.add(numbers)
    numbers.strip!
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match?(/^\d+$/)
  end
end
