require "string_builder"

RSpec.describe StringBuilder do
    it "initially returns an empty string as output" do
      string_builder = StringBuilder.new
      expect(string_builder.output).to eq ""
      expect(string_builder.size).to eq 0
    end

    it "returns inputted words" do
      string_builder = StringBuilder.new
      string_builder.add("simple")
      result = string_builder.output
      expect(result).to eq "simple"
    end
    
    it "returns inputted words and its length" do
        string_builder = StringBuilder.new
        string_builder.add("simple")
        result = string_builder.output
        result2 = string_builder.size
        expect(result).to eq "simple"
        expect(result2).to eq 6
    end
end


