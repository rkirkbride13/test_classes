require 'gratitudes'

RSpec.describe Gratitudes do
  it "if create gratitudes class" do 
    gratitude = Gratitudes.new
    result = gratitude.is_a?(Gratitudes)
    expect(result).to eq true
  end

  it "should push a value into the gratitudes array if add method is called" do
    gratitude = Gratitudes.new
    result = gratitude.add("sunshine")
    expect(result).to eq ["sunshine"]
  end

  it "should reply grateful for sunshine when the format method is called" do
    gratitude = Gratitudes.new
    gratitude.add("sunshine")
    result = gratitude.format
    expect(result).to eq "Be grateful for: sunshine"
  end

  it "should reply grateful for: sunshine, water when we call add method more than once and then call format" do
    gratitude = Gratitudes.new
    gratitude.add("sunshine")
    gratitude.add("water")
    result = gratitude.format
    expect(result).to eq "Be grateful for: sunshine, water"
  end

=begin
  it "should reply grateful for sunshine when the format method is called" do
    gratitude = Gratitudes.new
    result = gratitude.add("sunshine").format
    expect(result).to eq "Be grateful for: sunshine"
  end
=end

end