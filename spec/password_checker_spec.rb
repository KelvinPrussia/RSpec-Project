require 'password_checker'

RSpec.describe PasswordChecker do
  it "fails if the password is less than 8 characters" do
    password_checker = PasswordChecker.new
    expect{password_checker.check("123456")}.to raise_error "Invalid password, must be 8+ characters."
  end
end