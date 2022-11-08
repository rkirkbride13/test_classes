require 'present'

RSpec.describe Present do
  it "if the contents is iphone then the value will be iphone" do
  contents = Present.new
  result = contents.wrap("iphone")
  expect(result).to eq "iphone"
  end

  context "if the contents is already wrap then give a message of a contents has already been wrapped" do
  it "fails" do
    contents = Present.new
    contents.wrap("iphone")
    expect{contents.wrap("iphone")}.to raise_error "A contents has already been wrapped."
    end
  end

  it "should return iphone if we call wrap and then unwrap" do
    contents = Present.new
    contents.wrap("iphone")
    result = contents.unwrap
    expect(result).to eq "iphone"
  end

end