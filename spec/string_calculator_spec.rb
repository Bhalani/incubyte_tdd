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
  end
end
