require 'password_checker'

RSpec.describe PasswordChecker do
  it "should return true when the password is equal or greater then 8" do 
    password_checker = PasswordChecker.new
    result = password_checker.check("password1")
    expect(result).to eq true
  end
end