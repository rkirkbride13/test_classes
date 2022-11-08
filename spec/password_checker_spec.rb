require 'password_checker'

RSpec.describe PasswordChecker do
  it "should return true when the password is equal or greater then 8" do 
    password_checker = PasswordChecker.new
    result = password_checker.check("password1")
    expect(result).to eq true
  end

  context "should return Invalid password, must be 8+ characters. if length is less than 8" do
    it "fails" do
      password_checker = PasswordChecker.new
      expect{password_checker.check("robbie")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  it "should return NoMethod erron when the password is integer" do
    password_checker = PasswordChecker.new
    expect{password_checker.check(123)}.to raise_error(NoMethodError)
  end
end