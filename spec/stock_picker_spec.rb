require './lib/stock_picker.rb'

describe "#stock_picker" do
  it "returns [1, 4] from sample array" do
    expected = [1, 4]
    result = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

    expect(result).to eql(expected)
  end
  
end