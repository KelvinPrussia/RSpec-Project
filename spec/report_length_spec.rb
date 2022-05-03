require "report_length"

RSpec.describe "report_length method" do
  it "returns 6 characters long when 'string' is given" do
    result = report_length("string")
    expect(result).to eq "This string was 6 characters long."
  end

  it "returns 9 characters long when 'Hi Kelvin' is given" do
    result = report_length("Hi Kelvin")
    expect(result).to eq "This string was 9 characters long."
  end

end