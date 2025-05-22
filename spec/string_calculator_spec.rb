RSpec.describe StringCalculator do
  describe '#sum' do
    it 'returns 0 with empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end
