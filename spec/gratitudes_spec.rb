require "gratitudes"

RSpec.describe Gratitudes do
    it "returns a message" do
      gratitudes = Gratitudes.new
      gratitudes.add("pizza")
      result = gratitudes.format
      expect(result).to eq "Be grateful for: pizza"
    end
    
    it "returns the message with no input" do
      gratitudes = Gratitudes.new
      gratitudes.add("")
      expect(gratitudes.format).to eq "Be grateful for: "
    end

end 