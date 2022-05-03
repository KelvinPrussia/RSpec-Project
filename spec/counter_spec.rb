require "counter"

RSpec.describe Counter do
  it "adds the given integer to the total" do
    counter = Counter.new
    counter.add(10)
    result = counter.report
    expect(result).to eq "Counted to 10 so far."
  end

  it "adds multiple numbers cumilatively" do
    counter = Counter.new
    counter.add(5)
    counter.add(12)
    result = counter.report
    expect(result).to eq "Counted to 17 so far."
  end
end