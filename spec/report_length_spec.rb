require 'report_length'

RSpec.describe "report_length" do
  it "returns the length of the string" do
    result = report_length("method")
    expect(result).to eq "This string was 6 characters long."
  end
end  