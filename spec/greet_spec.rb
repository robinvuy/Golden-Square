require 'greet'

RSpec.describe "greet method" do
    it "greet a given user" do 
      result = greet("Robin")
      expect(result).to eq "Hello, Robin!"
    end
end

