require 'string_builder'

RSpec.describe StringBuilder do
  it "should create an instance of the StringBuilder class" do
    string = StringBuilder.new
    result = string.is_a?(StringBuilder)
    expect(result).to eq true
  end

  it "should be an empty string when initialized" do
    string = StringBuilder.new
    result = string.output
    expect(result).to eq ""
  end

  it "should add 'this is a string' when calling add method" do
    string = StringBuilder.new
    result = string.add("this is a string")
    expect(result).to eq "this is a string"
  end

  it "should tell me the length of the string when calling size method" do
    string = StringBuilder.new
    result = string.add("and so is this").size
    expect(result).to eq 14
  end
end