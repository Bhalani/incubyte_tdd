require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe "#sum" do
    it "returns 0 with empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns 0 with string containing only spaces" do
      expect(StringCalculator.add("   ")).to eq(0)
    end

    it "returs passed digitin string with single digit" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns passed number in string with multiple digits" do
      expect(StringCalculator.add("123")).to eq(123)
    end

    it "returns sum of numbers in string with comma delimiter" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it "returns sum of numbers in string with new line delimiter" do
      expect(StringCalculator.add("3\n6")).to eq(9)
    end

    it "returns sum of numbers in string with custom delimiter" do
      expect(StringCalculator.add("//;\n1;2;3;5")).to eq(11)
    end
  end
end
