require 'gratitudes'

RSpec.describe Gratitudes do
  it "if create gratitudes class" do 
    gratitude = Gratitudes.new
    result = gratitude.is_a?(Gratitudes)
    expect(result).to eq true
  end
end