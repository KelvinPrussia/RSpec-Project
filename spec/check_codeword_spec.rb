require "check_codeword"

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in.' if the correct codeword is given" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns 'Close, but nope' if the word starts with h and ends with e" do
    result = check_codeword("hare")
    expect(result).to eq "Close, but nope."
  end
  
  it "returns 'WRONG!' if anything else is input" do
    result = check_codeword("monkey")
    expect(result).to eq "WRONG!"
  end
end