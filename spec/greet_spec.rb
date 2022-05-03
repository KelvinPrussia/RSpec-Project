require 'greet'

RSpec.describe "greet method" do
  it "greets the name input" do
    result = greet("Kelvin")
    expect(result).to eq "Hello, Kelvin!"
  end
end