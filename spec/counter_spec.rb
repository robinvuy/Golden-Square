require "counter"

RSpec.describe Counter do
  it "Adds numbers together and prints the result" do
    counter = Counter.new
    counter.add(5)
    result = counter.report 
    expect(result).to eq "Counted to 5 so far."
  end
end