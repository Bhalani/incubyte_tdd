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
  end
end
