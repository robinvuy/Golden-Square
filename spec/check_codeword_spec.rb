require 'check_codeword'

RSpec.describe "check_codeword" do
  it "check codeword is correct" do
    result = check_codeword("horse") 
    expect(result).to eq "Correct! Come in."
  end
end

RSpec.describe "check_codeword" do
    it "check codeword has h and e as starting and ending characters" do
      result = check_codeword("house") 
      expect(result).to eq "Close, but nope."
    end 
  end

  RSpec.describe "check_codeword" do
    it "Any other word is wrong" do
      result = check_codeword("pony") 
      expect(result).to eq "WRONG!"
    end 
  end  


