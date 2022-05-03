require "string_builder"

RSpec.describe StringBuilder do
  it "Combines two strings" do
    builder = StringBuilder.new
    builder.add("Fizz")
    builder.add("Buzz")
    result = builder.output
    expect(result).to eq "FizzBuzz"
  end
  
  it "Returns the length of the string" do
    builder = StringBuilder.new
    builder.add("Fizz")  
    result = builder.size
    expect(result).to eq 4
  end

  it "Returns a sentencecby adding strings together" do
    builder = StringBuilder.new
    builder.add("Hello ")
    builder.add("Kelvin, ")
    builder.add("how ")
    builder.add("are ")
    builder.add("you?")
    result =builder.output
    expect(result).to eq "Hello Kelvin, how are you?"
  end
end