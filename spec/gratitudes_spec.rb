require "gratitudes"

RSpec.describe Gratitudes do
  it "Adds a string to the gratitudes array" do
    gratitudes = Gratitudes.new
    gratitudes.add("Loved ones")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Loved ones"
  end

  it "Joins multiple strings together" do
    gratitudes = Gratitudes.new
    gratitudes.add("Loved ones")
    gratitudes.add("Friends")
    gratitudes.add("Pets")
    gratitudes.add("Opportunities")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Loved ones, Friends, Pets, Opportunities"
  end
end