require 'present'

RSpec.describe Present do
  it "if the contents is iphone then the value will be iphone" do
  contents = Present.new
  result = contents.wrap("iphone")
  expect(result).to eq "iphone"
  end

  it "should return iphone if we call wrap and then unwrap" do
    contents = Present.new
    contents.wrap("iphone")
    result = contents.unwrap
    expect(result).to eq "iphone"
  end

end