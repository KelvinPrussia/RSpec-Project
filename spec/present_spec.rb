require 'present'

RSpec.describe Present do
    it 'fails when unwrapping without wrapping first' do
      present = Present.new
      expect{present.unwrap}.to raise_error "No contents have been wrapped."
    end

    it 'fails when trying to wrap after already wrapping an object.' do
      present = Present.new
      present.wrap("Toy")
      expect{present.wrap("Another toy")}.to raise_error "A contents has alredy been wrapped."
    end
end