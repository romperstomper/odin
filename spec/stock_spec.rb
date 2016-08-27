require_relative '../stock'

describe Stock do
  it 'should print the minimum' do
  s = Stock.new
  p = s.picker([17,3,6,9,15,8,6,1,10])
  expect(p).to eq 1
  end
end
