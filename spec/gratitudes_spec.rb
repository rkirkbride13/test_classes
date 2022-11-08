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

end